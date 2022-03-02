//
//  Dither.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.14, iOS 12, tvOS 12, *)
@objc public extension CIFF {
	///
	/// Dither
	///
	/// Apply dithering to an image. This operation is usually performed in a perceptual color space.
	///
	/// **Links**
	///
	/// - [CIDither Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDither)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cidither?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIDither/)
	///
	@available(macOS 10.14, iOS 12, tvOS 12, *)
	@objc(CIFFDither) class Dither: FilterCore {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIDither")
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

		// MARK: - intensity (inputIntensity)

		/// The intensity of the effect.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputIntensity`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Default value: `0.1`
		/// - Minimum value: `0.0`
		/// - Maximum value: `5.0`
		@objc public var intensity: NSNumber? {
			get {
				return self.keyedValue("inputIntensity")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: Dither.intensityRange), forKey: "inputIntensity")
			}
		}

		/// `intensity` range definition
		public static let intensityRange: ClosedRange<Float> = 0.0 ... 5.0

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			image: CIImage,
			intensity: NSNumber = 0.1
		) {
			self.init()

			self.image = image
			self.intensity = intensity
		}
	}
}