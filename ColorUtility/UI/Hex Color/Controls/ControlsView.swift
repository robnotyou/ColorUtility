//
//  ControlsView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **ControlsView**
///
/// * Actions that can be performed
///
struct ControlsView: View {
    var body: some View {
        VStack {
            Spacer()
            CopyView()
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
