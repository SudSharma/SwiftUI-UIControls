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
                    TextField($plainText, placeholder: Text("Optional"))
                }
            }
            Section {
                HStack {
                    Text("Round Border")
                    Divider()
                    TextField($roundBorderText, placeholder: Text("Optional")).textFieldStyle(.roundedBorder)
                }
            }
            Section {
                HStack {
                    Text("Right Aligned")
                    Divider()
                    TextField($rightAlignedText, placeholder: Text("Optional")).multilineTextAlignment(.trailing)
                }
            }
            Section {
                HStack {
                    Text("Secure Text")
                    Divider()
                    SecureField($secureText, placeholder: Text("Optional"))
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
