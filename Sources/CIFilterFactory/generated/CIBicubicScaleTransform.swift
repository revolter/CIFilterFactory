//
//  CIBicubicScaleTransform.swift  (AUTOMATICALLY GENERATED FILE)
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
//  Automatically generated on 2020-07-09 00:57:49 +0000.  Do not edit.

import AVFoundation
import CoreImage
import CoreML
import Foundation

#if !os(macOS)
	// For access to NSValue.cgAffineTransformValue
	import UIKit
#endif

@available(macOS 10.13, iOS 11, *)
@objc public extension CIFilterFactory {
	///
	/// Bicubic Scale Transform
	///
	/// Produces a high-quality, scaled version of a source image. The parameters of B and C for this filter determine the sharpness or softness of the resampling. The most commonly used B and C values are 0.0 and 0.75, respectively.
	///
	/// **Links**
	///
	/// [CIBicubicScaleTransform Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBicubicScaleTransform)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIBicubicScaleTransform/)
	///
	@objc(CIFilterFactory_CIBicubicScaleTransform) class CIBicubicScaleTransform: FilterCommon {
		@objc public init?() {
			super.init(name: "CIBicubicScaleTransform")
		}

		// MARK: - inputImage

		///
		/// The image to use as an input image. For filters that also use a background image, this is the foreground image.
		///
		///   Class: CIImage, Type: CIAttributeTypeImage
		///
		@objc public var inputImage: CIImage? {
			get {
				return self.filter.value(forKey: "inputImage") as? CIImage
			}
			set {
				self.filter.setValue(newValue, forKey: "inputImage")
			}
		}

		// MARK: - inputScale

		///
		/// The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.
		///
		///   Class: NSNumber, Type: CIAttributeTypeScalar
		///
		///   minValue: 0.0
		///
		let inputScale_Range: PartialRangeFrom<Float> = Float(0.0)...
		@objc public var inputScale: NSNumber? {
			get {
				return self.filter.value(forKey: "inputScale") as? NSNumber
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: self.inputScale_Range), forKey: "inputScale")
			}
		}

		// MARK: - inputAspectRatio

		///
		/// The additional horizontal scaling factor to use on the image.
		///
		///   Class: NSNumber, Type: CIAttributeTypeScalar
		///
		///   minValue: 0.0
		///
		let inputAspectRatio_Range: PartialRangeFrom<Float> = Float(0.0)...
		@objc public var inputAspectRatio: NSNumber? {
			get {
				return self.filter.value(forKey: "inputAspectRatio") as? NSNumber
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: self.inputAspectRatio_Range), forKey: "inputAspectRatio")
			}
		}

		// MARK: - inputB

		///
		/// Specifies the value of B to use for the cubic resampling function.
		///
		///   Class: NSNumber, Type: CIAttributeTypeScalar
		///
		///   minValue: 0.0
		///   maxValue: 1.0
		///
		let inputB_Range: ClosedRange<Float> = 0.0 ... 1.0
		@objc public var inputB: NSNumber? {
			get {
				return self.filter.value(forKey: "inputB") as? NSNumber
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: self.inputB_Range), forKey: "inputB")
			}
		}

		// MARK: - inputC

		///
		/// Specifies the value of C to use for the cubic resampling function.
		///
		///   Class: NSNumber, Type: CIAttributeTypeScalar
		///
		///   minValue: 0.0
		///   maxValue: 1.0
		///
		let inputC_Range: ClosedRange<Float> = 0.0 ... 1.0
		@objc public var inputC: NSNumber? {
			get {
				return self.filter.value(forKey: "inputC") as? NSNumber
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: self.inputC_Range), forKey: "inputC")
			}
		}
	}
}
