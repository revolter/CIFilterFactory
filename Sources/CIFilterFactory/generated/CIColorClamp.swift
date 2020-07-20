//
//  CIColorClamp.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.9, iOS 7, *)
@objc public extension CIFilterFactory {
	///
	/// Color Clamp
	///
	/// Clamp color to a certain range.
	///
	/// **Links**
	///
	/// [CIColorClamp Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorClamp)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIColorClamp/)
	///
	@objc(CIFilterFactory_CIColorClamp) class CIColorClamp: FilterCore {
		@objc public init?() {
			super.init(name: "CIColorClamp")
		}

		// MARK: - Inputs

		///
		/// The image to use as an input image. For filters that also use a background image, this is the foreground image.
		///
		///   Class:    CIImage
		///   Type:     CIAttributeTypeImage
		@objc public dynamic var inputImage: CIImage? {
			get {
				return self.filter.value(forKey: "inputImage") as? CIImage
			}
			set {
				self.filter.setValue(newValue, forKey: "inputImage")
			}
		}

		///
		/// Lower clamping values
		///
		///   Class:    CIVector
		///   Default:  [0 0 0 0]
		@objc public dynamic var inputMinComponents: CIVector? {
			get {
				return self.filter.value(forKey: "inputMinComponents") as? CIVector
			}
			set {
				self.filter.setValue(newValue, forKey: "inputMinComponents")
			}
		}

		///
		/// Higher clamping values
		///
		///   Class:    CIVector
		///   Default:  [1 1 1 1]
		@objc public dynamic var inputMaxComponents: CIVector? {
			get {
				return self.filter.value(forKey: "inputMaxComponents") as? CIVector
			}
			set {
				self.filter.setValue(newValue, forKey: "inputMaxComponents")
			}
		}

		// MARK: - Convenience initializer

		@objc public convenience init?(
			inputImage: CIImage,
			inputMinComponents: CIVector = CIVector([0.0, 0.0, 0.0, 0.0]),
			inputMaxComponents: CIVector = CIVector([1.0, 1.0, 1.0, 1.0])
		) {
			self.init()

			self.inputImage = inputImage
			self.inputMinComponents = inputMinComponents
			self.inputMaxComponents = inputMaxComponents
		}
	}
}
