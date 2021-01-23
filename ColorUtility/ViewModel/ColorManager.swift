//
//  ColorManager.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import AppKit

/// **ColorManager**
///
/// * Okay, maybe overkill for a small utility...
/// * But other functionality could be added later...
/// * ...and it matches my MapUtility and ImageUtility apps
///
class ColorManager: ObservableObject { /// 'coz we're using Combine, innit!
    
    let name = "Rob's Color Utility"
    
    @Published private (set) var generatedCode: String = "UIColor() // generated code"
    @Published private (set) var isCopyingCode: Bool = false /// used to flash text, on Copying
    
    
    
    // MARK: - Intents
    
    /// The user entered a hexColor, or an alpha
    func didEnter(hexColor: String, alpha: String) {
        print("hexColor: \(hexColor), alpha: \(alpha)")
        // TODO: generate UIColor code, from hex color
        
        copyToClipboard(generatedCode)
    }
    
    func copyToClipboard(_ string: String) {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.writeObjects([string as NSString])
        indicateCopyAction()
    }
    
    /// Will momentarily highlight the text, then restore to normal...
    private func indicateCopyAction() {
        isCopyingCode = true
        let delay = 250 /// milliseconds
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(delay)) {
            self.isCopyingCode = false
        }
    }
}
