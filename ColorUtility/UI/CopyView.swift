//
//  CopyView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI
import MapKit

struct CopyView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        Button(action: {
            let pasteboard = NSPasteboard.general
            pasteboard.clearContents()
            pasteboard.writeObjects([colorManager.name as NSString])
            colorManager.indicateCopyAction()
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
