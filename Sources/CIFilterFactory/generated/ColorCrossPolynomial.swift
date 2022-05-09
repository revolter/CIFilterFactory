//
//  ColorCrossPolynomial.swift  (AUTOMATICALLY GENERATED FILE)
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
	/// Color Cross Polynomial
	///
	/// Adjusts the color of an image with polynomials.
	///
	/// **Availability**
	/// - macOS 10.9, iOS 7, tvOS 7
	///
	/// **Categories**
	/// - CICategoryBuiltIn
	/// - CICategoryColorEffect
	/// - CICategoryInterlaced
	/// - CICategoryNonSquarePixels
	/// - CICategoryStillImage
	/// - CICategoryVideo
	///
	/// **Documentation Links**
	/// - [CIColorCrossPolynomial Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorCrossPolynomial)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cicolorcrosspolynomial?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIColorCrossPolynomial/)
	///
	@available(macOS 10.9, iOS 7, tvOS 7, *)
	@objc(CIFFColorCrossPolynomial) class ColorCrossPolynomial: Core {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIColorCrossPolynomial")
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

		// MARK: - redCoefficients (inputRedCoefficients)

		/// Polynomial coefficients for red channel
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputRedCoefficients`
		/// - Internal class: `CIVector`
		/// - Default Value: `[1 0 0 0 0 0 0 0 0 0]`
		@objc public var redCoefficients: CIVector? {
			get {
				self.keyedValue("inputRedCoefficients")
			}
			set {
				self.setKeyedValue(newValue, for: "inputRedCoefficients")
			}
		}

		/// `redCoefficients` default value
		@objc public static let redCoefficientsDefault = CIVector(values: [1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 10)

		// MARK: - greenCoefficients (inputGreenCoefficients)

		/// Polynomial coefficients for green channel
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputGreenCoefficients`
		/// - Internal class: `CIVector`
		/// - Default Value: `[0 1 0 0 0 0 0 0 0 0]`
		@objc public var greenCoefficients: CIVector? {
			get {
				self.keyedValue("inputGreenCoefficients")
			}
			set {
				self.setKeyedValue(newValue, for: "inputGreenCoefficients")
			}
		}

		/// `greenCoefficients` default value
		@objc public static let greenCoefficientsDefault = CIVector(values: [0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 10)

		// MARK: - blueCoefficients (inputBlueCoefficients)

		/// Polynomial coefficients for blue channel
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputBlueCoefficients`
		/// - Internal class: `CIVector`
		/// - Default Value: `[0 0 1 0 0 0 0 0 0 0]`
		@objc public var blueCoefficients: CIVector? {
			get {
				self.keyedValue("inputBlueCoefficients")
			}
			set {
				self.setKeyedValue(newValue, for: "inputBlueCoefficients")
			}
		}

		/// `blueCoefficients` default value
		@objc public static let blueCoefficientsDefault = CIVector(values: [0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 10)

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			inputImage: CIImage,
			redCoefficients: CIVector = ColorCrossPolynomial.redCoefficientsDefault,
			greenCoefficients: CIVector = ColorCrossPolynomial.greenCoefficientsDefault,
			blueCoefficients: CIVector = ColorCrossPolynomial.blueCoefficientsDefault
		) {
			self.init()
			self.inputImage = inputImage
			self.redCoefficients = redCoefficients
			self.greenCoefficients = greenCoefficients
			self.blueCoefficients = blueCoefficients
		}
	}
}
