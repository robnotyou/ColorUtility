//
//  HexColorView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

struct HexColorView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        VStack {
            Text("Hex Color")
                .background(colorManager.isCopyingCode ? Color(NSColor.selectedTextBackgroundColor) : Color.clear)
            CopyView()
        }
    }
}

struct HexColorView_Previews: PreviewProvider {
    static var previews: some View {
        HexColorView()
    }
}
