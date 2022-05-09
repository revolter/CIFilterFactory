//
//  MorphologyGradient.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.13, iOS 11, tvOS 11, *)
@objc public extension CIFF {
	///
	/// Morphology Gradient
	///
	/// Finds the edges of an image by returning the difference between the morphological minimum and maximum operations to the image.
	///
	/// **Availability**
	/// - macOS 10.13, iOS 11, tvOS 11
	///
	/// **Categories**
	/// - CICategoryBlur
	/// - CICategoryBuiltIn
	/// - CICategoryStillImage
	/// - CICategoryVideo
	///
	/// **Documentation Links**
	/// - [CIMorphologyGradient Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMorphologyGradient)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cimorphologygradient?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIMorphologyGradient/)
	///
	@available(macOS 10.13, iOS 11, tvOS 11, *)
	@objc(CIFFMorphologyGradient) class MorphologyGradient: Core {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIMorphologyGradient")
		}

		// MARK: - inputImage (inputImage)

		/// The image to use as an input image. For filters that also use a background image, this is the foreground image.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputImage`
		/// - Internal class: `CIImage`
		/// - Type: `CIAttributeTypeImage`
		@objc public var inputImage: CIImage? {
			get {
				self.keyedValue("inputImage")
			}
			set {
				self.setKeyedValue(newValue, for: "inputImage")
			}
		}

		// MARK: - radius (inputRadius)

		/// The desired radius of the circular morphological operation to the image.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputRadius`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeDistance`
		/// - Minimum Value: `0.0`
		/// - Default Value: `5.0`
		@objc public var radius: Double {
			get {
				self.doubleValue(forKey: "inputRadius", defaultValue: Self.radiusDefault)
			}
			set {
				self.setDoubleValue(newValue, bounds: MorphologyGradient.radiusRange, forKey: "inputRadius")
			}
		}

		/// `radius` default value
		@objc public static let radiusDefault: Double = 5.0

		/// `radius` range definition
		public static let radiusRange = PartialRangeFrom<Double>(0.0)

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			inputImage: CIImage,
			radius: Double = MorphologyGradient.radiusDefault
		) {
			self.init()
			self.inputImage = inputImage
			self.radius = radius
		}
	}
}
