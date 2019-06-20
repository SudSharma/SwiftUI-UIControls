//
//  DatePickerView.swift
//  UIControls
//
//  Created by Sud on 6/19/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct DatePickerView : View {
    @State var selectedDate: Date = Date()
    @State var selectedDate1: Date = Date()
    
    var body: some View {
        Form {
            Section {
                DatePicker($selectedDate)
            }
            Section {
                DatePicker($selectedDate1, displayedComponents: [.date]).datePickerStyle(.default)
            }
        }
        .navigationBarTitle(Text("Date Picker"))
    }
}

#if DEBUG
struct DatePickerView_Previews : PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
#endif
