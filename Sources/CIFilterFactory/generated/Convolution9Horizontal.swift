//
//  Convolution9Horizontal.swift  (AUTOMATICALLY GENERATED FILE)
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
	/// Horizontal 9 Convolution
	///
	/// Horizontal Convolution with 9 values.
	///
	/// **CIFilter Name**
	/// - CIConvolution9Horizontal
	///
	/// **Availability**
	/// - macOS 10.9, iOS 7, tvOS 7
	///
	/// **Categories**
	/// - CICategoryBuiltIn
	/// - CICategoryHighDynamicRange
	/// - CICategoryStillImage
	/// - CICategoryStylize
	/// - CICategoryVideo
	///
	/// **Documentation Links**
	/// - [CIConvolution9Horizontal Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution9Horizontal)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/ciconvolution9horizontal?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIConvolution9Horizontal/)
	///
	@available(macOS 10.9, iOS 7, tvOS 7, *)
	@objc(CIFFConvolution9Horizontal) class Convolution9Horizontal: Core {
		/// Create an instance of the filter with all default values
		@objc public init?() {
			super.init(name: "CIConvolution9Horizontal")
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

		// MARK: - weights (inputWeights)

		/// A vector containing the 9 weights of the convolution kernel.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputWeights`
		/// - Internal class: `CIVector`
		/// - Default Value: `[0 0 0 0 1 0 0 0 0]`
		@objc public var weights: CIVector? {
			get {
				self.keyedValue("inputWeights")
			}
			set {
				self.setKeyedValue(newValue, for: "inputWeights")
			}
		}

		/// `weights` default value
		@objc public static let weightsDefault = CIVector(values: [0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0], count: 9)

		// MARK: - bias (inputBias)

		/// A value that is added to the RGBA components of the output pixel.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputBias`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Default Value: `0.0`
		@objc public var bias: Double {
			get {
				self.doubleValue(forKey: "inputBias", defaultValue: Self.biasDefault)
			}
			set {
				self.setKeyedValue(NSNumber(value: newValue), for: "inputBias")
			}
		}

		/// `bias` default value
		@objc public static let biasDefault: Double = 0.0

		// MARK: - Convenience creators

		/// Filter initializer
		/// - Parameters:
		///   - inputImage: The image to use as an input for the effect.
		///   - weights: A vector containing the 9 weights of the convolution kernel.
		///   - bias: A value that is added to the RGBA components of the output pixel.
		@objc public convenience init?(
			inputImage: CIImage? = nil,
			weights: CIVector = Convolution9Horizontal.weightsDefault,
			bias: Double = Convolution9Horizontal.biasDefault
		) {
			self.init()
			if let inputImage = inputImage {
				self.inputImage = inputImage
			}
			self.weights = weights
			self.bias = bias
		}
	}
}
