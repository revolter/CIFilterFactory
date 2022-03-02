//
//  EdgePreserveUpsampleFilter.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.12, iOS 10, tvOS 10, *)
@objc public extension CIFF {
	///
	/// Edge Preserve Upsample Filter
	///
	/// Upsamples a small image to the size of the input image using the luminance of the input image as a guide to preserve detail.
	///
	/// **Links**
	///
	/// - [CIEdgePreserveUpsampleFilter Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEdgePreserveUpsampleFilter)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/ciedgepreserveupsamplefilter?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIEdgePreserveUpsampleFilter/)
	///
	@available(macOS 10.12, iOS 10, tvOS 10, *)
	@objc(CIFFEdgePreserveUpsampleFilter) class EdgePreserveUpsampleFilter: FilterCore {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIEdgePreserveUpsampleFilter")
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

		// MARK: - smallImage (inputSmallImage)

		/// No Description
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputSmallImage`
		/// - Internal class: `CIImage`
		@objc public var smallImage: CIImage? {
			get {
				return self.keyedValue("inputSmallImage")
			}
			set {
				self.setKeyedValue(newValue, for: "inputSmallImage")
			}
		}

		// MARK: - spatialSigma (inputSpatialSigma)

		/// No Description
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputSpatialSigma`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Default value: `3`
		/// - Minimum value: `0.0`
		/// - Maximum value: `5.0`
		@objc public var spatialSigma: NSNumber? {
			get {
				return self.keyedValue("inputSpatialSigma")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: EdgePreserveUpsampleFilter.spatialSigmaRange), forKey: "inputSpatialSigma")
			}
		}

		/// `spatialSigma` range definition
		public static let spatialSigmaRange: ClosedRange<Float> = 0.0 ... 5.0

		// MARK: - lumaSigma (inputLumaSigma)

		/// No Description
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputLumaSigma`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Default value: `0.15`
		/// - Minimum value: `0.0`
		/// - Maximum value: `1.0`
		@objc public var lumaSigma: NSNumber? {
			get {
				return self.keyedValue("inputLumaSigma")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: EdgePreserveUpsampleFilter.lumaSigmaRange), forKey: "inputLumaSigma")
			}
		}

		/// `lumaSigma` range definition
		public static let lumaSigmaRange: ClosedRange<Float> = 0.0 ... 1.0

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			image: CIImage,
			smallImage: CIImage,
			spatialSigma: NSNumber = 3,
			lumaSigma: NSNumber = 0.15
		) {
			self.init()

			self.image = image
			self.smallImage = smallImage
			self.spatialSigma = spatialSigma
			self.lumaSigma = lumaSigma
		}
	}
}