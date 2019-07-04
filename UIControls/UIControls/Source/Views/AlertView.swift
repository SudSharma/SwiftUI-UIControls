//
//  AlertView.swift
//  UIControls
//
//  Created by Sud on 6/21/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct AlertView : View {
    @State var showActionSheet: Bool = false
    @State var showAlert: Bool = false
    
    var body: some View {
        Form {
            Section {
                Button(action: {
                    self.showActionSheet.toggle()
                }) {
                    return Text("Show ActionSheet")
                }
                .presentation($showActionSheet) {
                    return ActionSheet(title: Text("Showing ActionSheet"),
                                       message: Text("Message"),
                                       buttons: [Alert.Button.default(Text("OK")),
                                                 Alert.Button.cancel(),
                                                 Alert.Button.destructive(Text("Delete"))])
                }
            }
            Section {
                Button(action: {
                    self.showAlert.toggle()
                }) {
                    return Text("Show Alert")
                }
                .presentation($showAlert) {
                    return Alert(title: Text("Showing Alert"),
                                 message: Text("Message"),
                                 primaryButton: Alert.Button.default(Text("OK")),
                                 secondaryButton: Alert.Button.cancel())
                }
            }
        }
        .navigationBarTitle(Text("Alert and Action Sheet"))
    }
}

#if DEBUG
struct AlertView_Previews : PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
#endif
