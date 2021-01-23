//
//  UtilitiesTabView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

// MARK: - UtilitiesTabView
// This is our outermost SwiftUIView
// We use a TabView to lay out our top-level custom SwiftUI views
// (In general, keep this as simple as possible)
struct UtilitiesTabView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        TabView {
            HexColorView()
                .tabItem {
                    Text("Hex Color")
                }
            Text("Other tabs can be added later...")
                .tabItem{
                    Text("Other tabs...")
            }
        }
        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
    }
}

struct UtilitiesTabView_Previews: PreviewProvider {
    static var previews: some View {
        UtilitiesTabView()
            .environmentObject(ColorManager())
    }
}

