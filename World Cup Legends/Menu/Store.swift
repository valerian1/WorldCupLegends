//
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

                    } label: {
                        Text("Get 20 gold")
                    }
                    .foregroundColor(.green)
                    .background(.black)
                    .font(.largeTitle)
                    .padding()

                    
                    Button {
                        onMenu.toggle()
                    } label: {
                        Text("Menu")
                    }
                    .foregroundColor(.black)
                    .background(.green)
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
