//
//  CIModTransition.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.4, iOS 6, *)
@objc public extension CIFilterFactory {
	///
	/// Mod
	///
	/// Transitions from one image to another by revealing the target image through irregularly shaped holes.
	///
	/// **Links**
	///
	/// [CIModTransition Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIModTransition)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIModTransition/)
	///
	@objc(CIFilterFactory_CIModTransition) class CIModTransition: FilterCommon {
		@objc public init?() {
			super.init(name: "CIModTransition")
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

		// MARK: - inputTargetImage

		///
		/// The target image for a transition.
		///
		///   Class: CIImage, Type: CIAttributeTypeImage
		///
		@objc public var inputTargetImage: CIImage? {
			get {
				return self.filter.value(forKey: "inputTargetImage") as? CIImage
			}
			set {
				self.filter.setValue(newValue, forKey: "inputTargetImage")
			}
		}

		// MARK: - inputCenter

		///
		/// The x and y position to use as the center of the effect
		///
		///   Class: CIVector, Type: CIAttributeTypePosition
		///
		@objc public var inputCenter: CIFilterFactory.Point? {
			get {
				return CIFilterFactory.Point(with: self.filter, key: "inputCenter")
			}
			set {
				self.filter.setValue(newValue?.point, forKey: "inputCenter")
			}
		}

		// MARK: - inputTime

		///
		/// The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
		///
		///   Class: NSNumber, Type: CIAttributeTypeTime
		///
		///   minValue: 0.0
		///   maxValue: 1.0
		///
		let inputTime_Range: ClosedRange<Float> = 0.0 ... 1.0
		@objc public var inputTime: NSNumber? {
			get {
				return self.filter.value(forKey: "inputTime") as? NSNumber
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: self.inputTime_Range), forKey: "inputTime")
			}
		}

		// MARK: - inputAngle

		///
		/// The angle of the mod hole pattern.
		///
		///   Class: NSNumber, Type: CIAttributeTypeAngle
		///
		@objc public var inputAngle: NSNumber? {
			get {
				return self.filter.value(forKey: "inputAngle") as? NSNumber
			}
			set {
				self.filter.setValue(newValue, forKey: "inputAngle")
			}
		}

		// MARK: - inputRadius

		///
		/// The radius of the undistorted holes in the pattern.
		///
		///   Class: NSNumber, Type: CIAttributeTypeDistance
		///
		///   minValue: 1.0
		///
		let inputRadius_Range: PartialRangeFrom<Float> = Float(1.0)...
		@objc public var inputRadius: NSNumber? {
			get {
				return self.filter.value(forKey: "inputRadius") as? NSNumber
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: self.inputRadius_Range), forKey: "inputRadius")
			}
		}

		// MARK: - inputCompression

		///
		/// The amount of stretching applied to the mod hole pattern. Holes in the center are not distorted as much as those at the edge of the image.
		///
		///   Class: NSNumber, Type: CIAttributeTypeDistance
		///
		///   minValue: 1.0
		///
		let inputCompression_Range: PartialRangeFrom<Float> = Float(1.0)...
		@objc public var inputCompression: NSNumber? {
			get {
				return self.filter.value(forKey: "inputCompression") as? NSNumber
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: self.inputCompression_Range), forKey: "inputCompression")
			}
		}
	}
}
