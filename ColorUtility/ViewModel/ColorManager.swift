//
//  ColorManager.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import Foundation

/// **ColorManager**
///
/// * Okay, maybe overkill for a small utility...
/// * But other functionality could be added later...
/// * ...and it matches my MapUtility and ImageUtility apps
///
class ColorManager: ObservableObject { /// 'coz we're using Combine, innit!
    
    let name = "Rob's Color Utility"
    
    @Published var generatedCode: String = "UIColor() // generated code"
    @Published var isCopyingCode: Bool = false /// used to flash text, on Copying
    
    
    
    // MARK: - Intents

    func indicateCopyAction() {
        /// Will momentarily highlight the text, then restore to normal...
        isCopyingCode = true
        let delay = 250 /// milliseconds
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(delay)) {
            self.isCopyingCode = false
        }
    }
}
