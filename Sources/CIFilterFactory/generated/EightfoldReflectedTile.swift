//
//  EightfoldReflectedTile.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.5, iOS 6, tvOS 6, *)
@objc public extension CIFF {
	///
	/// Eightfold Reflected Tile
	///
	/// Produces a tiled image from a source image by applying an 8-way reflected symmetry.
	///
	/// **Availability**
	/// - macOS 10.5, iOS 6, tvOS 6
	///
	/// **Categories**
	/// - CICategoryBuiltIn
	/// - CICategoryStillImage
	/// - CICategoryTileEffect
	/// - CICategoryVideo
	///
	/// **Documentation Links**
	/// - [CIEightfoldReflectedTile Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEightfoldReflectedTile)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cieightfoldreflectedtile?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIEightfoldReflectedTile/)
	///
	@available(macOS 10.5, iOS 6, tvOS 6, *)
	@objc(CIFFEightfoldReflectedTile) class EightfoldReflectedTile: Core {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIEightfoldReflectedTile")
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

		// MARK: - center (inputCenter)

		/// The x and y position to use as the center of the effect
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputCenter`
		/// - Internal class: `CIVector`
		/// - Type: `CIAttributeTypePosition`
		/// - Default Value: `CGPoint(x: 150.0, y: 150.0)`
		@objc public var center: CGPoint {
			get {
				self.cgPointValue(forKey: "inputCenter", defaultValue: Self.centerDefault)
			}
			set {
				self.setKeyedValue(newValue.ciVector, for: "inputCenter")
			}
		}

		/// `center` default value
		@objc public static let centerDefault = CGPoint(x: 150.0, y: 150.0)

		// MARK: - angle (inputAngle)

		/// The angle (in radians) of the tiled pattern.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputAngle`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeAngle`
		/// - Default Value: `0.0`
		@objc public var angle: Double {
			get {
				self.doubleValue(forKey: "inputAngle", defaultValue: Self.angleDefault)
			}
			set {
				self.setKeyedValue(NSNumber(value: newValue), for: "inputAngle")
			}
		}

		/// `angle` default value
		@objc public static let angleDefault: Double = 0.0

		// MARK: - width (inputWidth)

		/// The width of a tile.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputWidth`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeDistance`
		/// - Minimum Value: `0.0`
		/// - Default Value: `100.0`
		@objc public var width: Double {
			get {
				self.doubleValue(forKey: "inputWidth", defaultValue: Self.widthDefault)
			}
			set {
				self.setDoubleValue(newValue, bounds: EightfoldReflectedTile.widthRange, forKey: "inputWidth")
			}
		}

		/// `width` default value
		@objc public static let widthDefault: Double = 100.0

		/// `width` range definition
		public static let widthRange = PartialRangeFrom<Double>(0.0)

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			inputImage: CIImage,
			center: CGPoint = EightfoldReflectedTile.centerDefault,
			angle: Double = EightfoldReflectedTile.angleDefault,
			width: Double = EightfoldReflectedTile.widthDefault
		) {
			self.init()
			self.inputImage = inputImage
			self.center = center
			self.angle = angle
			self.width = width
		}
	}
}
