//
//  UIControlsListView.swift
//  UIControls
//
//  Created by Sud on 6/16/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

var uiControls = [UIControlItem(id: "1", displayName: "Segmented Control"),
                  UIControlItem(id: "2", displayName: "Toggle")]

struct UIControlsListView : View {
    
    var body: some View {
        NavigationView {
            List(uiControls) { uiControl in
                NavigationButton(destination: SegmentedControlView()) {
                    Text(uiControl.displayName)
                }
            }
            .navigationBarTitle(Text("UI Controls"), displayMode: .inline)
        }
    }
}


struct UIControlItem: Identifiable {
    var id: String
    var displayName: String
}


#if DEBUG
struct UIControlsListView_Previews : PreviewProvider {
    static var previews: some View {
        UIControlsListView()
    }
}
#endif
