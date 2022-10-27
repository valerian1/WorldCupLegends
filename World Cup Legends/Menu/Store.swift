
//  Store.swift
//  World Cup Legends
//
//  Created by VLR on 22/09/22.
//

import SwiftUI

struct Store: View {
    @State private var onMenu = false
    var wallet = GameOn()
    
    var body: some View {
        VStack {
            Spacer()
            if onMenu {
                Menu()
            } else {
                VStack {
                    Button {
                        onMenu.toggle()
                    } label: {
                        Text("Menu")
                    }
                    .menuButtons()
                    
                    Button {
                        // Code
                    } label: {
                        Text("Get 20 Gold")
                    }
                    .menuButtons()
                    .background(.green)
                    .padding()
                    
                    Button {
                        // Code
                    } label: {
                        Text("Get 50 Gold")
                    }
                    .menuButtons()
                    .background(.green)
                    .padding()
                    
                    Button {
                        // Code
                    } label: {
                        Text("Get 100 Gold")
                    }
                    .menuButtons()
                    .background(.green)
                    .padding()
                }
            }
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .ignoresSafeArea()
    }
}

struct Store_Previews: PreviewProvider {
    static var previews: some View {
        Store()
    }
}
