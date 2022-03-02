//
//  AffineTile.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.4, iOS 6, tvOS 6, *)
@objc public extension CIFF {
	///
	/// Affine Tile
	///
	/// Applies an affine transformation to an image and then tiles the transformed image.
	///
	/// **Links**
	///
	/// - [CIAffineTile Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAffineTile)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/ciaffinetile?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIAffineTile/)
	///
	@available(macOS 10.4, iOS 6, tvOS 6, *)
	@objc(CIFFAffineTile) class AffineTile: FilterCore {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIAffineTile")
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

		// MARK: - transform (inputTransform)

		/// The transform to apply to the image.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputTransform`
		/// - Internal class: `NSAffineTransform`
		/// - Default value: `{m11:0.4, m12:0.0, m21:0.0, m22:0.4, tX:0.0, tY:0.0}`
		@objc public var transform: CIAffineTransform? {
			get {
				return CIAffineTransform(filter: self.filter, key: "inputTransform")
			}
			set {
				self.setKeyedValue(newValue?.embeddedValue, for: "inputTransform")
			}
		}

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			image: CIImage,
			transform: CIAffineTransform
		) {
			self.init()

			self.image = image
			self.transform = transform
		}
	}
}