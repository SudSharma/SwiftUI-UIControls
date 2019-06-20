//
//  ButtonView.swift
//  UIControls
//
//  Created by Sud on 6/19/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct ButtonView : View {
    @State var selectedHeart = "❤️"
    
    var body: some View {
        VStack {
            HStack {
                Text("Pick a heart").padding(.leading)
                Spacer()
                Text(selectedHeart)
                Spacer()
                
                Button(action: {
                    self.selectedHeart = "❤️"
                }, label: {
                    Text("❤️")
                })
                
                Button(action: {
                    self.selectedHeart = "💙"
                }, label: {
                    Text("💙")
                })
                
                Button(action: {
                    self.selectedHeart = "💚"
                }, label: {
                    Text("💚")
                })
                    .padding(.trailing)
            }
            .padding([.top, .bottom])
            Divider()
            HStack {
                Text("Plain Button").padding(.leading)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Tap Me")
                })
                .padding(.trailing)
            }
            .padding([.top, .bottom])
            Divider()
            HStack {
                Text("Image Button").padding(.leading)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image("Car")
                })
                .padding(.trailing)
            }
            .padding([.top, .bottom])
            
            Spacer()
        }
        .navigationBarTitle(Text("Button"))
    }
}

#if DEBUG
struct ButtonView_Previews : PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
#endif
