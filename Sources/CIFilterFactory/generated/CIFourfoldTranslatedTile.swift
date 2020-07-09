//
//  CIFourfoldTranslatedTile.swift  (AUTOMATICALLY GENERATED FILE)
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

@available(macOS 10.5, iOS 6, *)
@objc public extension CIFilterFactory {
	///
	/// Fourfold Translated Tile
	///
	/// Produces a tiled image from a source image by applying 4 translation operations.
	///
	/// **Links**
	///
	/// [CIFourfoldTranslatedTile Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFourfoldTranslatedTile)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIFourfoldTranslatedTile/)
	///
	@objc(CIFilterFactory_CIFourfoldTranslatedTile) class CIFourfoldTranslatedTile: Core {
		@objc public init?() {
			super.init(name: "CIFourfoldTranslatedTile")
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
		/// The x and y position to use as the center of the effect
		///
		@objc public var inputCenter: CIVector? {
			get {
				return filter.value(forKey: "inputCenter") as? CIVector
			}
			set {
				filter.setValue(newValue, forKey: "inputCenter")
			}
		}

		// MARK: - inputAngle

		///
		/// The angle (in radians) of the tiled pattern.
		///
		@objc public var inputAngle: NSNumber? {
			get {
				return filter.value(forKey: "inputAngle") as? NSNumber
			}
			set {
				filter.setValue(newValue, forKey: "inputAngle")
			}
		}

		// MARK: - inputWidth

		///
		/// The width of a tile.
		///
		///   minValue: 0.0
		///
		let inputWidth_Range: PartialRangeFrom<Float> = Float(0.0)...
		@objc public var inputWidth: NSNumber? {
			get {
				return filter.value(forKey: "inputWidth") as? NSNumber
			}
			set {
				filter.setValue(newValue?.clamped(bounds: inputWidth_Range), forKey: "inputWidth")
			}
		}

		// MARK: - inputAcuteAngle

		///
		/// The primary angle for the repeating translated tile. Small values create thin diamond tiles, and higher values create fatter translated tiles.
		///
		@objc public var inputAcuteAngle: NSNumber? {
			get {
				return filter.value(forKey: "inputAcuteAngle") as? NSNumber
			}
			set {
				filter.setValue(newValue, forKey: "inputAcuteAngle")
			}
		}
	}
}
