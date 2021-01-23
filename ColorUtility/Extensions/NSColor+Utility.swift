//
//  NSColor+Utility.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import AppKit

extension NSColor {
    
    /// **asSwift()** Return Swift code to create the color
    ///
    func asSwiftCode() -> String {
        func componentAsString(_ cgFloat: CGFloat) -> String {
            formatter.string(from: NSNumber(floatLiteral: Double(cgFloat))) ?? "0"
        }
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 3
        let r = componentAsString(redComponent)
        let g = componentAsString(greenComponent)
        let b = componentAsString(blueComponent)
        let a = componentAsString(alphaComponent)
        return "UIColor(red: \(r), green: \(g), blue: \(b), alpha: \(a))"
    }
    
    /// **init(hex:)** Create an NSColor from a hex color
    ///
    /// * With or without leading "#"
    /// * 6 or 8 hex digits
    ///
    convenience init?(hex: String, alphaPercent: CGFloat? = nil) {
        let r, g, b, a: CGFloat
        let hexColor = (hex.first == "#") ? String(hex.dropFirst()) : hex
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        guard scanner.scanHexInt64(&hexNumber)  else {
            return nil
        }
        switch hexColor.count {
        case 8:
            r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
            g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
            b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
            a = CGFloat(hexNumber & 0x000000ff) / 255
        case 6:
            r = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
            b = CGFloat(hexNumber & 0x000000ff) / 255
            var alpha = CGFloat(alphaPercent ?? 100) / 100.0
            alpha = max(alpha, 0)
            alpha = min(alpha, 1)
            a = alpha
        default:
            return nil
        }
        self.init(red: r, green: g, blue: b, alpha: a)
    }
}

