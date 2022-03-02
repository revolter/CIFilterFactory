//
//  TorusLensDistortion.swift  (AUTOMATICALLY GENERATED FILE)
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
	/// Torus Lens Distortion
	///
	/// Creates a torus-shaped lens and distorts the portion of the image over which the lens is placed.
	///
	/// **Links**
	///
	/// - [CITorusLensDistortion Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITorusLensDistortion)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/citoruslensdistortion?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CITorusLensDistortion/)
	///
	@available(macOS 10.4, iOS 9, tvOS 9, *)
	@objc(CIFFTorusLensDistortion) class TorusLensDistortion: FilterCore {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CITorusLensDistortion")
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

		/// The x and y position to use as the center of the torus.
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

		/// The outer radius of the torus.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputRadius`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeDistance`
		/// - Default value: `160`
		/// - Minimum value: `0.0`
		@objc public var radius: NSNumber? {
			get {
				return self.keyedValue("inputRadius")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: TorusLensDistortion.radiusRange), forKey: "inputRadius")
			}
		}

		/// `radius` range definition
		public static let radiusRange: PartialRangeFrom<Float> = Float(0.0)...

		// MARK: - width (inputWidth)

		/// The width of the ring.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputWidth`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeDistance`
		/// - Default value: `80`
		/// - Minimum value: `0.0`
		@objc public var width: NSNumber? {
			get {
				return self.keyedValue("inputWidth")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: TorusLensDistortion.widthRange), forKey: "inputWidth")
			}
		}

		/// `width` range definition
		public static let widthRange: PartialRangeFrom<Float> = Float(0.0)...

		// MARK: - refraction (inputRefraction)

		/// The refraction of the glass.
		///
		/// CIFilter attribute information
		/// - Attribute key: `inputRefraction`
		/// - Internal class: `NSNumber`
		/// - Type: `CIAttributeTypeScalar`
		/// - Default value: `1.7`
		/// - Minimum value: `0.0`
		@objc public var refraction: NSNumber? {
			get {
				return self.keyedValue("inputRefraction")
			}
			set {
				self.filter.setValue(newValue?.clamped(bounds: TorusLensDistortion.refractionRange), forKey: "inputRefraction")
			}
		}

		/// `refraction` range definition
		public static let refractionRange: PartialRangeFrom<Float> = Float(0.0)...

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			image: CIImage,
			center: CGPoint = TorusLensDistortion.centerDefault,
			radius: NSNumber = 160,
			width: NSNumber = 80,
			refraction: NSNumber = 1.7
		) {
			self.init()

			self.image = image
			self.center = center
			self.radius = radius
			self.width = width
			self.refraction = refraction
		}
	}
}