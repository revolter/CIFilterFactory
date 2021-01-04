//
//  CIKaleidoscope.swift  (AUTOMATICALLY GENERATED FILE)
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

import AVFoundation
import CoreImage
import CoreML
import Foundation

public extension CIFilter {
	@available(macOS 10.4, iOS 9, *)
	@inlinable @objc static func Kaleidoscope() -> CIFilterFactory.CIKaleidoscope? {
		return CIFilterFactory.CIKaleidoscope()
	}
}

@available(macOS 10.4, iOS 9, *)
@objc public extension CIFilterFactory {
	///
	/// Kaleidoscope
	///
	/// Produces a kaleidoscopic image from a source image by applying 12-way symmetry.
	///
	/// **Links**
	///
	/// [CIKaleidoscope Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIKaleidoscope)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIKaleidoscope/)
	///
	@objc(CIFilterFactory_CIKaleidoscope) class CIKaleidoscope: FilterCore {
		@objc public init?() {
			super.init(name: "CIKaleidoscope")
		}

		// MARK: - Inputs

		///
		/// The image to use as an input image. For filters that also use a background image, this is the foreground image.
		///
		///   Class:    CIImage
		///   Type:     CIAttributeTypeImage
		@objc public dynamic var inputImage: CIImage? {
			get {
				return self.filter.value(forKey: "inputImage") as? CIImage
			}
			set {
				self.filter.setValue(newValue, forKey: "inputImage")
			}
		}

		///
		/// The number of reflections in the pattern.
		///
		///   Class:    NSNumber
		///   Type:     CIAttributeTypeScalar
		///   Default:  6
		///   minValue: 1.0
		///
		public static let inputCount_Range: PartialRangeFrom<Float> = Float(1.0)...
		@objc public dynamic var inputCount: NSNumber? {
			get {
				return self.filter.value(forKey: "inputCount") as? NSNumber
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: CIKaleidoscope.inputCount_Range), forKey: "inputCount")
			}
		}

		///
		/// The x and y position to use as the center of the effect
		///
		///   Class:    CIVector
		///   Type:     CIAttributeTypePosition
		///   Default:  [150 150]
		@objc public dynamic var inputCenter: CIFilterFactory.Point? {
			get {
				return CIFilterFactory.Point(with: self.filter, key: "inputCenter")
			}
			set {
				self.filter.setValue(newValue?.vector, forKey: "inputCenter")
			}
		}

		///
		/// The angle of reflection.
		///
		///   Class:    NSNumber
		///   Type:     CIAttributeTypeAngle
		///   Default:  0
		@objc public dynamic var inputAngle: NSNumber? {
			get {
				return self.filter.value(forKey: "inputAngle") as? NSNumber
			}
			set {
				self.filter.setValue(newValue, forKey: "inputAngle")
			}
		}

		// MARK: - Convenience initializer

		@objc public convenience init?(
			inputImage: CIImage,
			inputCount: NSNumber = 6,
			inputCenter: CIFilterFactory.Point = CIFilterFactory.Point(x: 150.0, y: 150.0),
			inputAngle: NSNumber = 0
		) {
			self.init()

			self.inputImage = inputImage
			self.inputCount = inputCount
			self.inputCenter = inputCenter
			self.inputAngle = inputAngle
		}
	}
}
