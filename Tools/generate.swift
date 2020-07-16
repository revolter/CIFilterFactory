//
//  generate.swift
//  CIFilterGeneratorTool
//
//  Copyright © 2020 Darren Ford. All rights reserved.
//
//  MIT license
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
//  documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
//  permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial
//  portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
//  WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
//  OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
//  OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import Cocoa

private func parseFilter(filter: CIFilter, out: FileSquirter) {

	out.print("""
//
//  \(filter.name).swift  (AUTOMATICALLY GENERATED FILE)
//  CIFilterFactory
//
//  MIT license
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
//  documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
//  permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial
//  portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
//  WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
//  OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
//  OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//
//  Automatically generated on 2020-07-09 00:57:49 +0000.  Do not edit.

import Foundation
import AVFoundation
import CoreML
import CoreImage

#if !os(macOS)
// For access to NSValue.cgAffineTransformValue
import UIKit
#endif

""")

	let inputKeys = filter.inputKeys

	let filterAttributes = filter.attributes

	var avail = ""
	if let macAvail = filterAttributes[kCIAttributeFilterAvailable_Mac] as? String {
		if let _ = Float(macAvail) {
			avail += "macOS \(macAvail)"
		}
	}
	if let iosAvail = filterAttributes[kCIAttributeFilterAvailable_iOS] as? String {
		if avail.count > 0 {
			avail += ", "
		}
		if let _ = Float(iosAvail) {
			avail += "iOS \(iosAvail)"
		}
	}
	if !avail.isEmpty {
		out.print("@available(\(avail), *)")
	}

	out.print("@objc public extension CIFilterFactory {")

	out.print("   ///")
	if let refDisplay = filterAttributes[kCIAttributeFilterDisplayName] as? String {
		out.print("   /// \(refDisplay)")
		out.print("   ///")
	}
	if let refDesc = CIFilter.localizedDescription(forFilterName: filter.name) {
		out.print("   /// \(refDesc)")
		out.print("   ///")
	}

	out.print("   /// **Links**")
	out.print("   ///")

	if let refDoc = filterAttributes[kCIAttributeReferenceDocumentation] as? URL {
		out.print("   /// [\(filter.name) Online Documentation](\(refDoc))")
		out.print("   ///")
	}

	out.print("   /// [CIFilter.io documentation](https://cifilter.io/\(filter.name)/)")
	out.print("   ///")


	out.print("   @objc(CIFilterFactory_\(filter.name)) class \(filter.name): FilterCommon {")
	out.print("      @objc public init?() {")
	out.print("         super.init(name: \"\(filter.name)\")")
	out.print("      }")

	for key in inputKeys {

		out.print("")
		out.print("   // MARK: - \(key)")
		out.print("")

		guard let keyItem = filterAttributes[key] as? [String: Any] else {
			continue
		}

		let keyDesc = keyItem[kCIAttributeDescription] as? String

		guard var keyClass = keyItem[kCIAttributeClass] as? String else {
			continue
		}

		let keySubType = keyItem[kCIAttributeType] as? String

		// Write out the description for the key

		out.print("   ///")
		out.print("   /// \(keyDesc ?? "No Description")")
		out.print("   ///")
		out.print("   ///   Class: \(keyClass), Type: \(keySubType ?? "Not specified")")
		out.print("   ///")

		let rangeDef = handleRange(out: out, key: key, keyAttributes: keyItem)

		if keySubType == "CIAttributeTypeRectangle" {
			out.print("   @objc public var \(key): CIFilterFactory.Rect? {")
			out.print("      get {")
			out.print("         return CIFilterFactory.Rect(with: self.filter, key: \"\(key)\")")
			out.print("      }")
			out.print("      set {")
			out.print("         self.filter.setValue(newValue?.vector, forKey: \"\(key)\")")
			out.print("      }")
			out.print("   }")
		}
		else if keyClass == "NSAffineTransform" {
			out.print("   @objc public var \(key): CIFilterFactory.AffineTransform? {")
			out.print("      get {")
			out.print("         return AffineTransform(filter: self.filter, key: \"\(key)\")")
			out.print("      }")
			out.print("      set {")
			out.print("         self.filter.setValue(newValue?.embeddedValue(), forKey: \"\(key)\")")
			out.print("      }")
			out.print("   }")
		}
		else if keySubType == "CIAttributeTypePosition" || keySubType == kCIAttributeTypeOffset {
			out.print("   @objc public var \(key): CIFilterFactory.Point? {")
			out.print("      get {")
			out.print("         return CIFilterFactory.Point(with: self.filter, key: \"\(key)\")")
			out.print("      }")
			out.print("      set {")
			out.print("         self.filter.setValue(newValue?.point, forKey: \"\(key)\")")
			out.print("      }")
			out.print("   }")
		}
		else if keyClass == "CGImageMetadataRef" {
			out.print("   @objc public var \(key): CGImageMetadata? {")
			out.print("      get {")
			out.print("         return (self.filter.value(forKey: \"\(key)\") as! CGImageMetadata)")
			out.print("      }")
			out.print("      set {")
			out.print("         self.filter.setValue(newValue, forKey: \"\(key)\")")
			out.print("      }")
			out.print("   }")
		}
		else {

			out.print("   @objc public var \(key): \(keyClass)? {")
			out.print("      get {")
			out.print("         return self.filter.value(forKey: \"\(key)\") as? \(keyClass)")
			out.print("      }")

			out.print("      set {")
			if let rangeDef = rangeDef {
				out.print("      self.filter.setValue(newValue?.clamped(bounds: \(rangeDef)), forKey: \"\(key)\")")
			}
			else {
				out.print("      self.filter.setValue(newValue, forKey: \"\(key)\")")
			}
			out.print("      }")
			out.print("   }")
		}
	}
	out.print("   }\n")
	out.print("}\n")
}

func handleRange(out: FileSquirter, key: String, keyAttributes: [String: Any]) -> String? {

	var minValue: Float?
	var maxValue: Float?
	var rangeString = ""
	if let paramMin = keyAttributes[kCIAttributeMin] as? Float {
		minValue = paramMin
		rangeString += "   ///   minValue: \(paramMin)"
	}
	if let paramMax = keyAttributes[kCIAttributeMax] as? Float {
		maxValue = paramMax
		if rangeString.count > 0 {
			rangeString += "\n"
		}
		rangeString += "   ///   maxValue: \(paramMax)"
	}
	if !rangeString.isEmpty {
		rangeString += "\n   ///"
		out.print(rangeString)
	}
	else {
		// No range specified for the key
		return nil
	}

	if let minValue = minValue {
		if let maxValue = maxValue {
			out.print("   let \(key)_Range: ClosedRange<Float> = \(minValue)...\(maxValue)")
		}
		else {
			out.print("   let \(key)_Range: PartialRangeFrom<Float> = Float(\(minValue))...")
		}
	}
	else if let maxValue = maxValue {
		out.print("   let \(key)_Range: PartialRangeTo<Float> = ...Float(\(maxValue))")
	}
	return " \(key)_Range"
}


class FileSquirter {
	let name: String
	var content: String = ""
	init(name: String) {
		self.name = name
	}

	func print(_ text: String) {
		content += text + "\n"
	}
}

let out = FileSquirter(name: "CIFilterFactory+Generated.swift")

let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)

guard CommandLine.arguments.count == 2,
	  let destinationURL = URL(string: CommandLine.arguments[1] ) else {
	Swift.print("Bad command line, \(CommandLine.arguments)")
	exit(-1)
}


let outURL = URL(string: CommandLine.arguments[1], relativeTo: currentDirectoryURL)!
//print(outURL)

//let outBase = outURL.appendingPathComponent("CIFilterFactory+Generated.swift")
////let url = URL(fileURLWithPath: outFile)
//do {
//	try out.content.write(to: outBase, atomically: true, encoding: .utf8)
//}
//catch {
//	Swift.print("Cannot write file \(error)")
//}

let generatedBase = outURL.appendingPathComponent("generated")
try? FileManager.default.createDirectory(at: generatedBase, withIntermediateDirectories: false, attributes: nil)


var fns: [String] = []
for filterName in CIFilter.filterNames(inCategories: nil) {
	if let filter = CIFilter(name: filterName) {

		do {

			let fs = FileSquirter(name: "\(filterName).swift")
			parseFilter(filter: filter, out: fs)
			let outURL = generatedBase.appendingPathComponent("\(filterName).swift")
			try fs.content.write(to: outURL, atomically: true, encoding: .utf8)

		}
		catch {
			Swift.print("Cannot write file \(error)")
		}
		//Swift.print(fs.content)
		// fns.append(filterName)
	}
}
