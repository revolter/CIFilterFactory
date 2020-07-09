//
//  CIBumpDistortion.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.4, iOS 6, *)
@objc public extension CIFilterFactory {
	///
	/// Bump Distortion
	///
	/// Creates a concave or convex bump that originates at a specified point in the image.
	///
	/// **Links**
	///
	/// [CIBumpDistortion Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBumpDistortion)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIBumpDistortion/)
	///
	@objc(CIFilterFactory_CIBumpDistortion) class CIBumpDistortion: Core {
		@objc public init?() {
			super.init(name: "CIBumpDistortion")
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

		// MARK: - inputCenter

		///
		/// The center of the effect as x and y coordinates.
		///
		@objc public var inputCenter: CIVector? {
			get {
				return filter.value(forKey: "inputCenter") as? CIVector
			}
			set {
				filter.setValue(newValue, forKey: "inputCenter")
			}
		}

		// MARK: - inputRadius

		///
		/// The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
		///
		///   minValue: 0.0
		///
		let inputRadius_Range: PartialRangeFrom<Float> = Float(0.0)...
		@objc public var inputRadius: NSNumber? {
			get {
				return filter.value(forKey: "inputRadius") as? NSNumber
			}
			set {
				filter.setValue(newValue?.clamped(bounds: inputRadius_Range), forKey: "inputRadius")
			}
		}

		// MARK: - inputScale

		///
		/// The scale of the effect determines the curvature of the bump. A value of 0.0 has no effect. Positive values create an outward bump; negative values create an inward bump.
		///
		@objc public var inputScale: NSNumber? {
			get {
				return filter.value(forKey: "inputScale") as? NSNumber
			}
			set {
				filter.setValue(newValue, forKey: "inputScale")
			}
		}
	}
}
