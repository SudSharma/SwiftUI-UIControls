//
//  TextFieldView.swift
//  UIControls
//
//  Created by Sud on 6/17/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct TextFieldView : View {
    @State var plainText: String = ""
    @State var roundBorderText: String = ""
    @State var rightAlignedText: String = ""
    @State var secureText: String = ""
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Text("Plain Text")
                    Divider()
                    TextField("Optional", text: $plainText)
                }
            }
            Section {
                HStack {
                    Text("Round Border")
                    Divider()
                    TextField("Optional", text: $roundBorderText).textFieldStyle(.roundedBorder)
                }
            }
            Section {
                HStack {
                    Text("Right Aligned")
                    Divider()
                    TextField("Optional", text: $rightAlignedText).multilineTextAlignment(.trailing)
                }
            }
            Section {
                HStack {
                    Text("Secure Text")
                    Divider()
                    SecureField("Optional", text: $secureText)
                }
            }
        }
        .navigationBarTitle(Text("Text Field"))
    }
}

#if DEBUG
struct TextFieldView_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
#endif
