//
//  HexColorView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **HexColorView**
///
/// * Input a hex color
/// * Show code for UIColor
///
struct HexColorView: View {
    
    var body: some View {
        VStack {
            InputHexColorView()
            GeneratedUIColorView()
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 8, trailing: 8))
        }
    }
}

struct HexColorView_Previews: PreviewProvider {
    static var previews: some View {
        HexColorView()
    }
}
