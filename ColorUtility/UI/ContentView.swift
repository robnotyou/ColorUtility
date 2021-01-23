//
//  ContentView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

// MARK: - ContentView
// This is our outermost SwiftUIView
// We use a TabView to lay out our top-level custom SwiftUI views
// (In general, keep this as simple as possible)
struct ContentView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        TabView {
            
            HexColorView()
                .tabItem {
                    Text("Hex Color")
                }
            
            Text("aTab")
                .tabItem{
                    Image(systemName: "studentdesk")
                    Text("Other tabs can be added later...")
            }
        }
        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ColorManager())
    }
}
