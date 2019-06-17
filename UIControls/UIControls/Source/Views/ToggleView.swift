//
//  ToggleView.swift
//  UIControls
//
//  Created by Sud on 6/17/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct ToggleView : View {
    @State var isOn: Bool = false
    
    var body: some View {
        List {
            Toggle(isOn: $isOn) {
                Text(" ")
            }
        }
        .listStyle(.grouped)
    }
}

#if DEBUG
struct ToggleView_Previews : PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
#endif
