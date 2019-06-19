//
//  UIControlsListView.swift
//  UIControls
//
//  Created by Sud on 6/16/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

var uiControls = [UIControlItem(id: 1, displayName: "Segmented Control"),
                  UIControlItem(id: 2, displayName: "Toggle"),
                  UIControlItem(id: 3, displayName: "Text Field")]

struct UIControlsListView : View {
    
    var body: some View {
        NavigationView {
            Form {
                NavigationButton(destination: SegmentedControlView()) {
                    Text(uiControls[0].displayName)
                }
                NavigationButton(destination: ToggleView()) {
                    Text(uiControls[1].displayName)
                }
                NavigationButton(destination: TextFieldView()) {
                    Text(uiControls[2].displayName)
                }
            }
            .navigationBarTitle(Text("UI Controls"), displayMode: .inline)
        }
    }
}


struct UIControlItem: Identifiable {
    var id: Int
    var displayName: String
}


#if DEBUG
struct UIControlsListView_Previews : PreviewProvider {
    static var previews: some View {
        UIControlsListView()
    }
}
#endif
