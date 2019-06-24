//
//  AlertView.swift
//  UIControls
//
//  Created by Sud on 6/21/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct AlertView : View {
    @State var actionSheet: ActionSheet?
    
    var body: some View {
        Button(action: {
            if self.actionSheet == nil {
                self.actionSheet = ActionSheet(title: Text("Showing ActionSheet"),
                                               message: Text("Message"),
                                               buttons: [Alert.Button.default(Text("OK")),
                                                         Alert.Button.cancel(),
                                                         Alert.Button.destructive(Text("Delete"))])
            }
        }) {
            Text("Show ActionSheet")
        }
        .presentation(actionSheet)
    }
}

#if DEBUG
struct AlertView_Previews : PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
#endif
