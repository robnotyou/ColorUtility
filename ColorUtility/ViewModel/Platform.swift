//
//  Platform.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import Foundation

/// **Platform** - Defines the target platform
enum Platform: String, CaseIterable {
    case iOS, macOS
    
    var colorObjectString: String {
        switch self {
        case .iOS:
            return "UIColor"
        case .macOS:
            return "NSColor"
        }
    }
}
