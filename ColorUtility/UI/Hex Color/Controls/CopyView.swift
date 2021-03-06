//
//  CopyView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **CopyView**
///
/// * Copy code to the clipboard
/// * (The code will momentarily flash, to indicate that it was copied)
///
struct CopyView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        Button(action: {
            colorManager.copyResultToClipboard()
        }) {
            Text("Copy")
        }
    }
}

struct CopyView_Previews: PreviewProvider {
    static var previews: some View {
        CopyView()
            .environmentObject(ColorManager())
    }
}
