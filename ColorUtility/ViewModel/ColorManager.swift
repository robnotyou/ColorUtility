//
//  ColorManager.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import AppKit
import SwiftUI

/// **ColorManager**
///
/// * Okay, maybe overkill for a small utility...
/// * But other functionality could be added later...
/// * ...and it matches my MapUtility and ImageUtility apps
///
class ColorManager: ObservableObject { /// 'coz we're using Combine, innit!
    
    let name = "Rob's Color Utility"
    
    @Published var platform = Platform.iOS /// Choosable by the user
    @Published private (set) var color: NSColor? /// Generated from the user's entered values
    @Published private (set) var isCopyingCode: Bool = false /// used to flash text, on Copying
    
    var colorResult: String? {
        color?.asSwiftCode(forPlatform: platform)
    }
    
    // MARK: - Intents
    
    /// **didEnter(hexColor:alpha:)
    ///
    /// The user entered a hexColor, or an alpha
    /// Convert to NSColor
    /// Copy to Clipboard
    ///
    func didEnter(hexColor: String, alpha: String) {
        let alphaFloat = CGFloat(Double(alpha) ?? 100)
        color = NSColor(hex: hexColor, alphaPercent: alphaFloat)
        copyResultToClipboard()
    }
    
    func copyResultToClipboard() {
        copyToClipboard(colorResult ?? "")
    }
    
    /// Copy the given string, to the Clipboard
    private func copyToClipboard(_ string: String) {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.writeObjects([string as NSString])
        indicateCopyAction()
    }
    
    /// **indicateCopyAction()**
    /// Used to momentarily highlight text, then restore to normal...
    /// ...to indicate that it was copied to the Clipboard
    private func indicateCopyAction() {
        isCopyingCode = true
        let delay = 250 /// milliseconds
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(delay)) {
            self.isCopyingCode = false
        }
    }
}



// MARK: - TestManager
/// e.g. for Previews
extension ColorManager {
    
    static var testManager: ColorManager = {
        let manager = ColorManager()
        manager.didEnter(hexColor: "0a0a0a", alpha: "45")
        return manager
    }()
}
