//
//  VortexDistortion.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.4, iOS 6, tvOS 6, *)
@objc public extension CIFF {
	///
	/// Vortex Distortion
	///
	/// Rotates pixels around a point to simulate a vortex. You can specify the number of rotations as well the center and radius of the effect.
	///
	/// **Links**
	///
	/// - [CIVortexDistortion Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVortexDistortion)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/civortexdistortion?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIVortexDistortion/)
	///
	@available(macOS 10.4, iOS 6, tvOS 6, *)
	@objc(CIFFVortexDistortion) class VortexDistortion: FilterCore {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIVortexDistortion")
		}

		// MARK: - Inputs

		// MARK: - image (inputImage)

		/// The image to use as an input image. For filters that also use a background image, this is the foreground image.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputImage`
		/// - Internal class: `CIImage`
		/// - Type: `CIAttributeTypeImage`
		@objc public var image: CIImage? {
			get {
				return self.keyedValue("inputImage")
			}
			set {
				self.setKeyedValue(newValue, for: "inputImage")
			}
		}

		// MARK: - center (inputCenter)

		/// The center of the effect as x and y coordinates.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputCenter`
		/// - Internal class: `CIVector`
		/// - Type: `CIAttributeTypePosition`
		/// - Default value: `[150 150]`
		@objc public var center: CGPoint {
			get {
				return CGPoint(with: self.filter, key: "inputCenter", defaultValue: Self.centerDefault)
			}
			set {
				self.setKeyedValue(newValue.ciVector, for: "inputCenter")
			}
		}

		/// center default value
		@objc public static let centerDefault = CGPoint(x: 150.0, y: 150.0)

		// MARK: - radius (inputRadius)

		/// The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputRadius`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeDistance`
		/// - Default value: `300`
		/// - Minimum value: `0.0`
		@objc public var radius: NSNumber? {
			get {
				return self.keyedValue("inputRadius")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: VortexDistortion.radiusRange), forKey: "inputRadius")
			}
		}

		/// `radius` range definition
		public static let radiusRange: PartialRangeFrom<Float> = Float(0.0)...

		// MARK: - angle (inputAngle)

		/// The angle (in radians) of the vortex.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputAngle`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeAngle`
		/// - Default value: `56.54866776461628`
		@objc public var angle: NSNumber? {
			get {
				return self.keyedValue("inputAngle")
			}
			set {
				self.setKeyedValue(newValue, for: "inputAngle")
			}
		}

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			image: CIImage,
			center: CGPoint = VortexDistortion.centerDefault,
			radius: NSNumber = 300,
			angle: NSNumber = 56.54866776461628
		) {
			self.init()

			self.image = image
			self.center = center
			self.radius = radius
			self.angle = angle
		}
	}
}