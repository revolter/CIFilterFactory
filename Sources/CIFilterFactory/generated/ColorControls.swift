//
//  ColorControls.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.4, iOS 5, tvOS 5, *)
@objc public extension CIFF {
	///
	/// Color Controls
	///
	/// Adjusts saturation, brightness, and contrast values.
	///
	/// **Availability**
	/// - macOS 10.4, iOS 5, tvOS 5
	///
	/// **Categories**
	/// - CICategoryBuiltIn
	/// - CICategoryColorAdjustment
	/// - CICategoryInterlaced
	/// - CICategoryNonSquarePixels
	/// - CICategoryStillImage
	/// - CICategoryVideo
	///
	/// **Documentation Links**
	/// - [CIColorControls Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorControls)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cicolorcontrols?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIColorControls/)
	///
	@available(macOS 10.4, iOS 5, tvOS 5, *)
	@objc(CIFFColorControls) class ColorControls: Core {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIColorControls")
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

		// MARK: - saturation (inputSaturation)

		/// The amount of saturation to apply. The larger the value, the more saturated the result.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputSaturation`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Minimum Value: `0.0`
		/// - Default Value: `1.0`
		@objc public var saturation: Double {
			get {
				self.doubleValue(forKey: "inputSaturation", defaultValue: Self.saturationDefault)
			}
			set {
				self.setDoubleValue(newValue, bounds: ColorControls.saturationRange, forKey: "inputSaturation")
			}
		}

		/// `saturation` default value
		@objc public static let saturationDefault: Double = 1.0

		/// `saturation` range definition
		public static let saturationRange = PartialRangeFrom<Double>(0.0)

		// MARK: - brightness (inputBrightness)

		/// The amount of brightness to apply. The larger the value, the brighter the result.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputBrightness`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Minimum Value: `-1.0`
		/// - Default Value: `0.0`
		@objc public var brightness: Double {
			get {
				self.doubleValue(forKey: "inputBrightness", defaultValue: Self.brightnessDefault)
			}
			set {
				self.setDoubleValue(newValue, bounds: ColorControls.brightnessRange, forKey: "inputBrightness")
			}
		}

		/// `brightness` default value
		@objc public static let brightnessDefault: Double = 0.0

		/// `brightness` range definition
		public static let brightnessRange = PartialRangeFrom<Double>(-1.0)

		// MARK: - contrast (inputContrast)

		/// The amount of contrast to apply. The larger the value, the more contrast in the resulting image.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputContrast`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Minimum Value: `0.0`
		/// - Default Value: `1.0`
		@objc public var contrast: Double {
			get {
				self.doubleValue(forKey: "inputContrast", defaultValue: Self.contrastDefault)
			}
			set {
				self.setDoubleValue(newValue, bounds: ColorControls.contrastRange, forKey: "inputContrast")
			}
		}

		/// `contrast` default value
		@objc public static let contrastDefault: Double = 1.0

		/// `contrast` range definition
		public static let contrastRange = PartialRangeFrom<Double>(0.0)

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			inputImage: CIImage,
			saturation: Double = ColorControls.saturationDefault,
			brightness: Double = ColorControls.brightnessDefault,
			contrast: Double = ColorControls.contrastDefault
		) {
			self.init()
			self.inputImage = inputImage
			self.saturation = saturation
			self.brightness = brightness
			self.contrast = contrast
		}
	}
}
