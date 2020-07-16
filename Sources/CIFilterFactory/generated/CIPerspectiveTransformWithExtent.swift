//
//  CIPerspectiveTransformWithExtent.swift  (AUTOMATICALLY GENERATED FILE)
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
	/// Perspective Transform with Extent
	///
	/// Alters the geometry of an image to simulate the observer changing viewing position. You can use the perspective filter to skew an image.
	///
	/// **Links**
	///
	/// [CIPerspectiveTransformWithExtent Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveTransformWithExtent)
	///
	/// [CIFilter.io documentation](https://cifilter.io/CIPerspectiveTransformWithExtent/)
	///
	@objc(CIFilterFactory_CIPerspectiveTransformWithExtent) class CIPerspectiveTransformWithExtent: FilterCommon {
		@objc public init?() {
			super.init(name: "CIPerspectiveTransformWithExtent")
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

		// MARK: - inputExtent

		///
		/// A rectangle that defines the extent of the effect.
		///
		///   Class: CIVector, Type: CIAttributeTypeRectangle
		///
		@objc public var inputExtent: CIFilterFactory.Rect? {
			get {
				return CIFilterFactory.Rect(with: self.filter, key: "inputExtent")
			}
			set {
				self.filter.setValue(newValue?.vector, forKey: "inputExtent")
			}
		}

		// MARK: - inputTopLeft

		///
		/// No Description
		///
		///   Class: CIVector, Type: CIAttributeTypePosition
		///
		@objc public var inputTopLeft: CIFilterFactory.Point? {
			get {
				return CIFilterFactory.Point(with: self.filter, key: "inputTopLeft")
			}
			set {
				self.filter.setValue(newValue?.point, forKey: "inputTopLeft")
			}
		}

		// MARK: - inputTopRight

		///
		/// No Description
		///
		///   Class: CIVector, Type: CIAttributeTypePosition
		///
		@objc public var inputTopRight: CIFilterFactory.Point? {
			get {
				return CIFilterFactory.Point(with: self.filter, key: "inputTopRight")
			}
			set {
				self.filter.setValue(newValue?.point, forKey: "inputTopRight")
			}
		}

		// MARK: - inputBottomRight

		///
		/// No Description
		///
		///   Class: CIVector, Type: CIAttributeTypePosition
		///
		@objc public var inputBottomRight: CIFilterFactory.Point? {
			get {
				return CIFilterFactory.Point(with: self.filter, key: "inputBottomRight")
			}
			set {
				self.filter.setValue(newValue?.point, forKey: "inputBottomRight")
			}
		}

		// MARK: - inputBottomLeft

		///
		/// No Description
		///
		///   Class: CIVector, Type: CIAttributeTypePosition
		///
		@objc public var inputBottomLeft: CIFilterFactory.Point? {
			get {
				return CIFilterFactory.Point(with: self.filter, key: "inputBottomLeft")
			}
			set {
				self.filter.setValue(newValue?.point, forKey: "inputBottomLeft")
			}
		}
	}
}
