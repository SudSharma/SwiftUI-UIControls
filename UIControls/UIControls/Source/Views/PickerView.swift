//
//  PickerView.swift
//  UIControls
//
//  Created by Sud on 6/19/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct PickerView : View {
    @State var selectedValue: String = ""
    
    var body: some View {
        Form {
            Section {
                Picker(selection: $selectedValue, label: Text("Select a country")) {
                    Text("China")
                    Text("India")
                    Text("UK")
                    Text("US")
                }
                .pickerStyle(.default)
            }
        }
        .navigationBarTitle(Text("Picker"))
    }
}

#if DEBUG
struct PickerView_Previews : PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
#endif
