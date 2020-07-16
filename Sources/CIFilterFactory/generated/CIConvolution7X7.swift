//
//  CIConvolution7X7.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.9, iOS 9, *)
@objc public extension CIFilterFactory {
	///
	/// 7 by 7 convolution
	///
	/// Convolution with 7 by 7 matrix
	///
	/// **Links**
	///
	/// [CIConvolution7X7 Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution7X7)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIConvolution7X7/)
	///
	@objc(CIFilterFactory_CIConvolution7X7) class CIConvolution7X7: FilterCommon {
		@objc public init?() {
			super.init(name: "CIConvolution7X7")
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

		// MARK: - inputWeights

		///
		/// No Description
		///
		///   Class: CIVector, Type: Not specified
		///
		@objc public var inputWeights: CIVector? {
			get {
				return self.filter.value(forKey: "inputWeights") as? CIVector
			}
			set {
				self.filter.setValue(newValue, forKey: "inputWeights")
			}
		}

		// MARK: - inputBias

		///
		/// No Description
		///
		///   Class: NSNumber, Type: Not specified
		///
		@objc public var inputBias: NSNumber? {
			get {
				return self.filter.value(forKey: "inputBias") as? NSNumber
			}
			set {
				self.filter.setValue(newValue, forKey: "inputBias")
			}
		}
	}
}
