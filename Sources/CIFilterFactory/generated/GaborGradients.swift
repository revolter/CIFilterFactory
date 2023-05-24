//
//  GaborGradients.swift  (AUTOMATICALLY GENERATED FILE)
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

@objc public extension CIFF {
	/// Gabor Gradients
	///
	/// Applies multichannel 5 by 5 Gabor gradient filter to an image. The resulting image has maximum horizontal gradient in the red channel and the maximum vertical gradient in the green channel. The gradient values can be positive or negative.
	///
	/// **CIFilter Name**
	/// - CIGaborGradients
	///
	/// **Availability**
	/// - macOS 10.15, iOS 13, tvOS 13
	///
	/// **Categories**
	/// - BuiltIn (*CICategoryBuiltIn*)
	/// - HighDynamicRange (*CICategoryHighDynamicRange*)
	/// - StillImage (*CICategoryStillImage*)
	/// - Stylize (*CICategoryStylize*)
	/// - Video (*CICategoryVideo*)
	///
	/// **Documentation Links**
	/// - [CIGaborGradients Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGaborGradients)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/ciqrcodegenerator?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIGaborGradients/)
	@available(macOS 10.15, iOS 13, tvOS 13, *)
	@objc(CIFFGaborGradients) class GaborGradients: Core {
		/// Create an instance of the filter with all default values
		@objc public init?() {
			super.init(name: "CIGaborGradients")
		}

		// MARK: - inputImage (inputImage)

		/// The image to use as an input for the effect.
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

		// MARK: - Convenience creators

		/// Filter initializer
		/// - Parameters:
		///   - inputImage: The image to use as an input for the effect.
		@objc public convenience init?(
			inputImage: CIImage? = nil
		) {
			self.init()
			if let inputImage = inputImage {
				self.inputImage = inputImage
			}
		}
	}
}

@available(macOS 10.15, iOS 13, tvOS 13, *)
public extension CIImage {
	/// Apply the 'Gabor Gradients' filter to this image and return a new filtered image
	///
	/// - Parameters:
	///   - isActive: If true applies the filter and returns a new image, else returns this image
	/// - Returns: The filtered image, or this image if the filter is not active
	///
	/// Applies multichannel 5 by 5 Gabor gradient filter to an image. The resulting image has maximum horizontal gradient in the red channel and the maximum vertical gradient in the green channel. The gradient values can be positive or negative.
	///
	/// **Categories**: BuiltIn, HighDynamicRange, StillImage, Stylize, Video
	///
	/// **Documentation Links**
	/// - [CIGaborGradients Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGaborGradients)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/ciqrcodegenerator?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIGaborGradients/)
	@inlinable func applyingGaborGradients(
		isActive: Bool = true
	) -> CIImage {
		guard isActive else { return self }
		return CIFF.GaborGradients(
			inputImage: self
		)?.outputImage ?? CIImage.empty()
	}
}
