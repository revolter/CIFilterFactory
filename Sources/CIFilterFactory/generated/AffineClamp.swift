//
//  AffineClamp.swift  (AUTOMATICALLY GENERATED FILE)
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
	///
	/// Affine Clamp
	///
	/// Performs an affine transformation on a source image and then clamps the pixels at the edge of the transformed image, extending them outwards. This filter performs similarly to the “Affine Transform” filter except that it produces an image with infinite extent. You can use this filter when you need to blur an image but you want to avoid a soft, black fringe along the edges.
	///
	/// **Availability**
	/// - macOS 10.4, iOS 6, tvOS 6
	///
	/// **Categories**
	/// - CICategoryBuiltIn
	/// - CICategoryStillImage
	/// - CICategoryTileEffect
	/// - CICategoryVideo
	///
	/// **Documentation Links**
	/// - [CIAffineClamp Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAffineClamp)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/ciaffineclamp?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIAffineClamp/)
	///
	@available(macOS 10.4, iOS 6, tvOS 6, *)
	@objc(CIFFAffineClamp) class AffineClamp: Core {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIAffineClamp")
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

		// MARK: - transform (inputTransform)

		/// The transform to apply to the image.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputTransform`
		/// - Internal class: `NSAffineTransform`
		/// - Default Value: `CIFF.CIAffineTransform(m11: 0.4, m12: 0.0, m21: 0.0, m22: 0.4, tX: 0.0, tY: 0.0)`
		@objc public var transform: CIAffineTransform? {
			get {
				return CIAffineTransform(filter: self.filter, key: "inputTransform")
			}
			set {
				self.setKeyedValue(newValue?.embeddedValue, for: "inputTransform")
			}
		}

		/// `transform` default value
		@objc public static let transformDefault = CIFF.CIAffineTransform(m11: 0.4, m12: 0.0, m21: 0.0, m22: 0.4, tX: 0.0, tY: 0.0)

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			inputImage: CIImage,
			transform: CIAffineTransform = AffineClamp.transformDefault
		) {
			self.init()
			self.inputImage = inputImage
			self.transform = transform
		}
	}
}
