//
//  CheckerboardGenerator.swift  (AUTOMATICALLY GENERATED FILE)
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
	/// Checkerboard
	///
	/// Generates a pattern of squares of alternating colors. You can specify the size, colors, and the sharpness of the pattern.
	///
	/// **Availability**
	/// - macOS 10.4, iOS 5, tvOS 5
	///
	/// **Categories**
	/// - CICategoryBuiltIn
	/// - CICategoryGenerator
	/// - CICategoryStillImage
	/// - CICategoryVideo
	///
	/// **Documentation Links**
	/// - [CICheckerboardGenerator Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICheckerboardGenerator)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cicheckerboardgenerator?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CICheckerboardGenerator/)
	///
	@available(macOS 10.4, iOS 5, tvOS 5, *)
	@objc(CIFFCheckerboardGenerator) class CheckerboardGenerator: Core {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CICheckerboardGenerator")
		}

		// MARK: - center (inputCenter)

		/// The center of the effect as x and y coordinates.
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

		// MARK: - color0 (inputColor0)

		/// A color to use for the first set of squares.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputColor0`
		/// - Internal class: `CIColor`
		@objc public var color0: CIColor? {
			get {
				return self.keyedValue("inputColor0")
			}
			set {
				self.setKeyedValue(newValue, for: "inputColor0")
			}
		}

		// MARK: - color1 (inputColor1)

		/// A color to use for the second set of squares.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputColor1`
		/// - Internal class: `CIColor`
		@objc public var color1: CIColor? {
			get {
				return self.keyedValue("inputColor1")
			}
			set {
				self.setKeyedValue(newValue, for: "inputColor1")
			}
		}

		// MARK: - width (inputWidth)

		/// The width of the squares in the pattern.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputWidth`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeDistance`
		/// - Default Value: `80.0`
		@objc public var width: Double {
			get {
				let number = self.filter.value(forKey: "inputWidth") as? NSNumber
				return number?.doubleValue ?? Self.widthDefault
			}
			set {
				self.setKeyedValue(NSNumber(value: newValue), for: "inputWidth")
			}
		}

		/// `width` default value
		@objc public static let widthDefault: Double = 80.0

		// MARK: - sharpness (inputSharpness)

		/// The sharpness of the edges in pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputSharpness`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Minimum Value: `0.0`
		/// - Maximum Value: `1.0`
		/// - Default Value: `1.0`
		@objc public var sharpness: Double {
			get {
				let number = self.filter.value(forKey: "inputSharpness") as? NSNumber
				return number?.doubleValue ?? Self.sharpnessDefault
			}
			set {
				let number = NSNumber(value: newValue).clamped(bounds: CheckerboardGenerator.sharpnessRange)
				self.filter.setValue(number, forKey: "inputSharpness")
			}
		}

		/// `sharpness` default value
		@objc public static let sharpnessDefault: Double = 1.0

		/// `sharpness` range definition
		public static let sharpnessRange: ClosedRange<Double> = 0.0 ... 1.0

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			center: CGPoint = CheckerboardGenerator.centerDefault,
			color0: CIColor,
			color1: CIColor,
			width: Double = CheckerboardGenerator.widthDefault,
			sharpness: Double = CheckerboardGenerator.sharpnessDefault
		) {
			self.init()
			self.center = center
			self.color0 = color0
			self.color1 = color1
			self.width = width
			self.sharpness = sharpness
		}
	}
}
