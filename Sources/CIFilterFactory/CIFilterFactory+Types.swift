//
//  CIFilterFactory+Types.swift
//
//  Created by Darren Ford on 16/7/20.
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

import CoreImage

#if !os(macOS)
// For access to NSValue.cgAffineTransformValue
import UIKit
#endif

public extension CIFF {
	
	/// A wrapped AffineTransform class to abstract away affine transform differences per platform
	@objc(CIFFCIAffineTransform) class CIAffineTransform: NSObject {
#if os(macOS)
		@objc var transform: NSAffineTransform
		@objc public init(_ transform: NSAffineTransform) {
			self.transform = transform
			super.init()
		}
		
		@objc public convenience init?(filter: CIFilter, key: String) {
			guard let value = filter.value(forKey: key) as? NSAffineTransform else {
				return nil
			}
			self.init(value)
		}
		
		func embeddedValue() -> AnyObject {
			return self.transform
		}
#else
		@objc var transform: CGAffineTransform
		@objc public init(_ transform: CGAffineTransform) {
			self.transform = transform
			super.init()
		}
		
		@objc public convenience init?(filter: CIFilter, key: String) {
			guard let value = filter.value(forKey: key) as? NSValue else {
				return nil
			}
			self.init(value.cgAffineTransformValue)
		}
		
		func embeddedValue() -> AnyObject {
			return NSValue(cgAffineTransform: self.transform)
		}
#endif
	}
}

extension CGPoint {
	public var ciVector: CIVector { return CIVector(cgPoint: self) }
	public init(with filter: CIFilter, key: String, defaultValue: CGPoint) {
		if let value = filter.value(forKey: key) as? CIVector {
			self = value.cgPointValue
		}
		else {
			self = defaultValue
		}
	}
}

extension CGRect {
	public var ciVector: CIVector { return CIVector(cgRect: self) }
	public init(with filter: CIFilter, key: String, defaultValue: CGRect) {
		if let value = filter.value(forKey: key) as? CIVector {
			self = value.cgRectValue
		}
		else {
			self = defaultValue
		}
	}
}
