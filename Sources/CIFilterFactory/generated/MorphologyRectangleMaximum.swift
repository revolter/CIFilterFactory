//
//  MorphologyRectangleMaximum.swift  (AUTOMATICALLY GENERATED FILE)
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

import AVFoundation
import CoreImage
import CoreML
import Foundation

@available(macOS 10.15, iOS 13, tvOS 13, *)
@objc public extension CIFF {
	///
	/// Morphology Rectangle Maximum
	///
	/// Lightens areas of an image by applying a rectangular morphological maximum operation to the image.
	///
	/// **Links**
	///
	/// - [CIMorphologyRectangleMaximum Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMorphologyRectangleMaximum)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cimorphologyrectanglemaximum?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIMorphologyRectangleMaximum/)
	///
	@available(macOS 10.15, iOS 13, tvOS 13, *)
	@objc(CIFFMorphologyRectangleMaximum) class MorphologyRectangleMaximum: FilterCore {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIMorphologyRectangleMaximum")
		}

		// MARK: - Inputs

		// MARK: - image (inputImage)

		/// The image to use as an input image. For filters that also use a background image, this is the foreground image.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputImage`
		/// - Internal class: `CIImage`
		/// - Type: `CIAttributeTypeImage`
		@objc public var image: CIImage? {
			get {
				return self.keyedValue("inputImage")
			}
			set {
				self.setKeyedValue(newValue, for: "inputImage")
			}
		}

		// MARK: - width (inputWidth)

		/// The width in pixels of the morphological operation. The value will be rounded to the nearest odd integer.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputWidth`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeInteger`
		/// - Default value: `5`
		/// - Minimum value: `1.0`
		@objc public var width: NSNumber? {
			get {
				return self.keyedValue("inputWidth")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: MorphologyRectangleMaximum.widthRange), forKey: "inputWidth")
			}
		}

		/// `width` range definition
		public static let widthRange: PartialRangeFrom<Float> = Float(1.0)...

		// MARK: - height (inputHeight)

		/// The height in pixels of the morphological operation. The value will be rounded to the nearest odd integer.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputHeight`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeInteger`
		/// - Default value: `5`
		/// - Minimum value: `1.0`
		@objc public var height: NSNumber? {
			get {
				return self.keyedValue("inputHeight")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: MorphologyRectangleMaximum.heightRange), forKey: "inputHeight")
			}
		}

		/// `height` range definition
		public static let heightRange: PartialRangeFrom<Float> = Float(1.0)...

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			image: CIImage,
			width: NSNumber = 5,
			height: NSNumber = 5
		) {
			self.init()

			self.image = image
			self.width = width
			self.height = height
		}
	}
}