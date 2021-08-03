//
//  CIHexagonalPixellate.swift  (AUTOMATICALLY GENERATED FILE)
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
	@available(macOS 10.5, iOS 9, *)
	@inlinable @objc static func HexagonalPixellate() -> CIFilterFactory.CIHexagonalPixellate? {
		return CIFilterFactory.CIHexagonalPixellate()
	}
}

@available(macOS 10.5, iOS 9, *)
@objc public extension CIFilterFactory {
	///
	/// Hexagonal Pixelate
	///
	/// Displays an image as colored hexagons whose color is an average of the pixels they replace.
	///
	/// **Links**
	///
	/// [CIHexagonalPixellate Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHexagonalPixellate)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIHexagonalPixellate/)
	///
	@objc(CIFilterFactory_CIHexagonalPixellate) class CIHexagonalPixellate: FilterCore {
		@objc public init?() {
			super.init(name: "CIHexagonalPixellate")
		}

		// MARK: - Inputs

		///
		/// The image to use as an input image. For filters that also use a background image, this is the foreground image.
		///
		///   Class:    CIImage
		///   Type:     CIAttributeTypeImage
		@objc public dynamic var inputImage: CIImage? {
			get {
				return self.keyedValue("inputImage")
			}
			set {
				self.setKeyedValue(newValue, for: "inputImage")
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
				self.setKeyedValue(newValue?.vector, for: "inputCenter")
			}
		}

		///
		/// The scale determines the size of the hexagons. Larger values result in larger hexagons.
		///
		///   Class:    NSNumber
		///   Type:     CIAttributeTypeDistance
		///   Default:  8
		///   minValue: 1.0
		///
		public static let inputScale_Range: PartialRangeFrom<Float> = Float(1.0)...
		@objc public dynamic var inputScale: NSNumber? {
			get {
				return self.keyedValue("inputScale")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: CIHexagonalPixellate.inputScale_Range), forKey: "inputScale")
			}
		}

		// MARK: - Convenience initializer

		@objc public convenience init?(
			inputImage: CIImage,
			inputCenter: CIFilterFactory.Point = CIFilterFactory.Point(x: 150.0, y: 150.0),
			inputScale: NSNumber = 8
		) {
			self.init()

			self.inputImage = inputImage
			self.inputCenter = inputCenter
			self.inputScale = inputScale
		}
	}
}
