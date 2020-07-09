//
//  CITextImageGenerator.swift  (AUTOMATICALLY GENERATED FILE)
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

import AVFoundation
import CoreImage
import CoreML
import Foundation

#if !os(macOS)
	import UIKit // For access to NSValue.cgAffineTransformValue
#endif

@available(macOS 10.13, iOS 11, *)
@objc public extension CIFilterFactory {
	///
	/// Text Image Generator
	///
	/// Generate an image from a string and font information.
	///
	/// **Links**
	///
	/// [CITextImageGenerator Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITextImageGenerator)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CITextImageGenerator/)
	///
	@objc(CIFilterFactory_CITextImageGenerator) class CITextImageGenerator: Core {
		@objc public init?() {
			super.init(name: "CITextImageGenerator")
			filter.setDefaults()
		}

		// MARK: - inputText

		///
		/// No Description
		///
		@objc public var inputText: NSString? {
			get {
				return filter.value(forKey: "inputText") as? NSString
			}
			set {
				filter.setValue(newValue, forKey: "inputText")
			}
		}

		// MARK: - inputFontName

		///
		/// No Description
		///
		@objc public var inputFontName: NSString? {
			get {
				return filter.value(forKey: "inputFontName") as? NSString
			}
			set {
				filter.setValue(newValue, forKey: "inputFontName")
			}
		}

		// MARK: - inputFontSize

		///
		/// No Description
		///
		///   minValue: 0.0
		///
		let inputFontSize_Range: PartialRangeFrom<Float> = Float(0.0)...
		@objc public var inputFontSize: NSNumber? {
			get {
				return filter.value(forKey: "inputFontSize") as? NSNumber
			}
			set {
				filter.setValue(newValue?.clamped(bounds: inputFontSize_Range), forKey: "inputFontSize")
			}
		}

		// MARK: - inputScaleFactor

		///
		/// No Description
		///
		///   minValue: 0.0
		///
		let inputScaleFactor_Range: PartialRangeFrom<Float> = Float(0.0)...
		@objc public var inputScaleFactor: NSNumber? {
			get {
				return filter.value(forKey: "inputScaleFactor") as? NSNumber
			}
			set {
				filter.setValue(newValue?.clamped(bounds: inputScaleFactor_Range), forKey: "inputScaleFactor")
			}
		}
	}
}
