//
//  CIKMeans.swift  (AUTOMATICALLY GENERATED FILE)
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
	import UIKit // For access to NSValue.cgAffineTransformValue
#endif

@available(macOS 10.15, iOS 13, *)
@objc public extension CIFilterFactory {
	///
	/// KMeans
	///
	/// Create a palette of the most common colors found in the image.
	///
	/// **Links**
	///
	/// [CIKMeans Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIKMeans)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIKMeans/)
	///
	@objc(CIFilterFactory_CIKMeans) class CIKMeans: Core {
		@objc public init?() {
			super.init(name: "CIKMeans")
			filter.setDefaults()
		}

		// MARK: - inputImage

		///
		/// The image to use as an input image. For filters that also use a background image, this is the foreground image.
		///
		@objc public var inputImage: CIImage? {
			get {
				return filter.value(forKey: "inputImage") as? CIImage
			}
			set {
				filter.setValue(newValue, forKey: "inputImage")
			}
		}

		// MARK: - inputExtent

		///
		/// A rectangle that defines the extent of the effect.
		///
		@objc public var inputExtent: CIVector? {
			get {
				return filter.value(forKey: "inputExtent") as? CIVector
			}
			set {
				filter.setValue(newValue, forKey: "inputExtent")
			}
		}

		// MARK: - inputMeans

		///
		/// Specifies the color seeds to use for k-means clustering, either passed as an image or an array of colors.
		///
		@objc public var inputMeans: CIImage? {
			get {
				return filter.value(forKey: "inputMeans") as? CIImage
			}
			set {
				filter.setValue(newValue, forKey: "inputMeans")
			}
		}

		// MARK: - inputCount

		///
		/// Specifies how many k-means color clusters should be used.
		///
		///   minValue: 0.0
		///   maxValue: 128.0
		///
		let inputCount_Range: ClosedRange<Float> = 0.0 ... 128.0
		@objc public var inputCount: NSNumber? {
			get {
				return filter.value(forKey: "inputCount") as? NSNumber
			}
			set {
				filter.setValue(newValue?.clamped(bounds: inputCount_Range), forKey: "inputCount")
			}
		}

		// MARK: - inputPasses

		///
		/// Specifies how many k-means passes should be performed.
		///
		///   minValue: 0.0
		///   maxValue: 20.0
		///
		let inputPasses_Range: ClosedRange<Float> = 0.0 ... 20.0
		@objc public var inputPasses: NSNumber? {
			get {
				return filter.value(forKey: "inputPasses") as? NSNumber
			}
			set {
				filter.setValue(newValue?.clamped(bounds: inputPasses_Range), forKey: "inputPasses")
			}
		}

		// MARK: - inputPerceptual

		///
		/// Specifies whether the k-means color palette should be computed in a perceptual color space.
		///
		///   minValue: 0.0
		///   maxValue: 1.0
		///
		let inputPerceptual_Range: ClosedRange<Float> = 0.0 ... 1.0
		@objc public var inputPerceptual: NSNumber? {
			get {
				return filter.value(forKey: "inputPerceptual") as? NSNumber
			}
			set {
				filter.setValue(newValue?.clamped(bounds: inputPerceptual_Range), forKey: "inputPerceptual")
			}
		}
	}
}
