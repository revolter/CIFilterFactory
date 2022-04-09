//
//  LenticularHaloGenerator.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.4, iOS 9, tvOS 9, *)
@objc public extension CIFF {
	///
	/// Lenticular Halo
	///
	/// Simulates a halo that is generated by the diffraction associated with the spread of a lens. This filter is typically applied to another image to simulate lens flares and similar effects.
	///
	/// **Availability**
	/// - macOS 10.4, iOS 9, tvOS 9
	///
	/// **Categories**
	/// - CICategoryBuiltIn
	/// - CICategoryGenerator
	/// - CICategoryStillImage
	/// - CICategoryVideo
	///
	/// **Links**
	/// - [CILenticularHaloGenerator Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILenticularHaloGenerator)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cilenticularhalogenerator?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CILenticularHaloGenerator/)
	///
	@available(macOS 10.4, iOS 9, tvOS 9, *)
	@objc(CIFFLenticularHaloGenerator) class LenticularHaloGenerator: Core {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CILenticularHaloGenerator")
		}

		// MARK: - center (inputCenter)

		/// The x and y position to use as the center of the halo.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputCenter`
		/// - Internal class: `CIVector`
		/// - Type: `CIAttributeTypePosition`
		/// - Default Value: `CGPoint(x: 150.0, y: 150.0)`
		@objc public var center: CGPoint {
			get {
				return CGPoint(with: self.filter, key: "inputCenter", defaultValue: Self.centerDefault)
			}
			set {
				self.setKeyedValue(newValue.ciVector, for: "inputCenter")
			}
		}

		/// `center` default value
		@objc public static let centerDefault = CGPoint(x: 150.0, y: 150.0)

		// MARK: - color (inputColor)

		/// A color.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputColor`
		/// - Internal class: `CIColor`
		@objc public var color: CIColor? {
			get {
				return self.keyedValue("inputColor")
			}
			set {
				self.setKeyedValue(newValue, for: "inputColor")
			}
		}

		// MARK: - haloRadius (inputHaloRadius)

		/// The radius of the halo.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputHaloRadius`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeDistance`
		/// - Minimum Value: `0.0`
		/// - Default Value: `70.0`
		@objc public var haloRadius: Double {
			get {
				let number = self.filter.value(forKey: "inputHaloRadius") as? NSNumber
				return number?.doubleValue ?? Self.haloRadiusDefault
			}
			set {
				let number = NSNumber(value: newValue).clamped(bounds: LenticularHaloGenerator.haloRadiusRange)
				self.filter.setValue(number, forKey: "inputHaloRadius")
			}
		}

		/// `haloRadius` default value
		@objc public static let haloRadiusDefault: Double = 70.0

		/// `haloRadius` range definition
		public static let haloRadiusRange = PartialRangeFrom<Double>(0.0)

		// MARK: - haloWidth (inputHaloWidth)

		/// The width of the halo, from its inner radius to its outer radius.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputHaloWidth`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeDistance`
		/// - Minimum Value: `0.0`
		/// - Default Value: `87.0`
		@objc public var haloWidth: Double {
			get {
				let number = self.filter.value(forKey: "inputHaloWidth") as? NSNumber
				return number?.doubleValue ?? Self.haloWidthDefault
			}
			set {
				let number = NSNumber(value: newValue).clamped(bounds: LenticularHaloGenerator.haloWidthRange)
				self.filter.setValue(number, forKey: "inputHaloWidth")
			}
		}

		/// `haloWidth` default value
		@objc public static let haloWidthDefault: Double = 87.0

		/// `haloWidth` range definition
		public static let haloWidthRange = PartialRangeFrom<Double>(0.0)

		// MARK: - haloOverlap (inputHaloOverlap)

		/// No Description
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputHaloOverlap`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Minimum Value: `0.0`
		/// - Default Value: `0.77`
		@objc public var haloOverlap: Double {
			get {
				let number = self.filter.value(forKey: "inputHaloOverlap") as? NSNumber
				return number?.doubleValue ?? Self.haloOverlapDefault
			}
			set {
				let number = NSNumber(value: newValue).clamped(bounds: LenticularHaloGenerator.haloOverlapRange)
				self.filter.setValue(number, forKey: "inputHaloOverlap")
			}
		}

		/// `haloOverlap` default value
		@objc public static let haloOverlapDefault: Double = 0.77

		/// `haloOverlap` range definition
		public static let haloOverlapRange = PartialRangeFrom<Double>(0.0)

		// MARK: - striationStrength (inputStriationStrength)

		/// The intensity of the halo colors. Larger values are more intense.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputStriationStrength`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Minimum Value: `0.0`
		/// - Default Value: `0.5`
		@objc public var striationStrength: Double {
			get {
				let number = self.filter.value(forKey: "inputStriationStrength") as? NSNumber
				return number?.doubleValue ?? Self.striationStrengthDefault
			}
			set {
				let number = NSNumber(value: newValue).clamped(bounds: LenticularHaloGenerator.striationStrengthRange)
				self.filter.setValue(number, forKey: "inputStriationStrength")
			}
		}

		/// `striationStrength` default value
		@objc public static let striationStrengthDefault: Double = 0.5

		/// `striationStrength` range definition
		public static let striationStrengthRange = PartialRangeFrom<Double>(0.0)

		// MARK: - striationContrast (inputStriationContrast)

		/// The contrast of the halo colors. Larger values are higher contrast.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputStriationContrast`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Minimum Value: `0.0`
		/// - Default Value: `1.0`
		@objc public var striationContrast: Double {
			get {
				let number = self.filter.value(forKey: "inputStriationContrast") as? NSNumber
				return number?.doubleValue ?? Self.striationContrastDefault
			}
			set {
				let number = NSNumber(value: newValue).clamped(bounds: LenticularHaloGenerator.striationContrastRange)
				self.filter.setValue(number, forKey: "inputStriationContrast")
			}
		}

		/// `striationContrast` default value
		@objc public static let striationContrastDefault: Double = 1.0

		/// `striationContrast` range definition
		public static let striationContrastRange = PartialRangeFrom<Double>(0.0)

		// MARK: - time (inputTime)

		/// The duration of the effect.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputTime`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Minimum Value: `0.0`
		/// - Maximum Value: `1.0`
		/// - Default Value: `0.0`
		@objc public var time: Double {
			get {
				let number = self.filter.value(forKey: "inputTime") as? NSNumber
				return number?.doubleValue ?? Self.timeDefault
			}
			set {
				let number = NSNumber(value: newValue).clamped(bounds: LenticularHaloGenerator.timeRange)
				self.filter.setValue(number, forKey: "inputTime")
			}
		}

		/// `time` default value
		@objc public static let timeDefault: Double = 0.0

		/// `time` range definition
		public static let timeRange: ClosedRange<Double> = 0.0 ... 1.0

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			center: CGPoint = LenticularHaloGenerator.centerDefault,
			color: CIColor,
			haloRadius: Double = LenticularHaloGenerator.haloRadiusDefault,
			haloWidth: Double = LenticularHaloGenerator.haloWidthDefault,
			haloOverlap: Double = LenticularHaloGenerator.haloOverlapDefault,
			striationStrength: Double = LenticularHaloGenerator.striationStrengthDefault,
			striationContrast: Double = LenticularHaloGenerator.striationContrastDefault,
			time: Double = LenticularHaloGenerator.timeDefault
		) {
			self.init()
			self.center = center
			self.color = color
			self.haloRadius = haloRadius
			self.haloWidth = haloWidth
			self.haloOverlap = haloOverlap
			self.striationStrength = striationStrength
			self.striationContrast = striationContrast
			self.time = time
		}
	}
}
