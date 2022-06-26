//
//  ComicEffect.swift  (AUTOMATICALLY GENERATED FILE)
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

@objc public extension CIFF {
	/// Comic Effect
	///
	/// Simulates a comic book drawing by outlining edges and applying a color halftone effect.
	///
	/// **CIFilter Name**
	/// - CIComicEffect
	///
	/// **Availability**
	/// - macOS 10.5, iOS 9, tvOS 9
	///
	/// **Categories**
	/// - CICategoryBuiltIn
	/// - CICategoryStillImage
	/// - CICategoryStylize
	/// - CICategoryVideo
	///
	/// **Documentation Links**
	/// - [CIComicEffect Online Documentation](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIComicEffect)
	/// - [CoreImage.CIFilterBuiltins Xcode documentation](https://developer.apple.com/documentation/coreimage/cicomiceffect?language=objc)
	/// - [CIFilter.io documentation](https://cifilter.io/CIComicEffect/)
	///
	@available(macOS 10.5, iOS 9, tvOS 9, *)
	@objc(CIFFComicEffect) class ComicEffect: Core {
		/// Create an instance of the filter
		@objc public init?() {
			super.init(name: "CIComicEffect")
		}

		// MARK: - inputImage (inputImage)

		/// The image to use as an input for the effect.
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

		// MARK: - Convenience initializer

		/// Create an instance of the filter
		@objc public convenience init?(
			inputImage: CIImage)
		{
			self.init()
			self.inputImage = inputImage
		}
	}
}
