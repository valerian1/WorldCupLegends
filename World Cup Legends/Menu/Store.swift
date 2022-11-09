
//  Store.swift
//  World Cup Legends
//
//  Created by VLR on 22/09/22.
//

import SwiftUI

struct Store: View {
    @State private var onMenu = false
    @ObservedObject var gold: Gold
    
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
                        gold.goldAmount.amount += 10
                    } label: {
                        Text("Get 10 Gold")
                    }
                    .menuButtons()
                    .background(.yellow)
                    .cornerRadius(12)
                    .padding()
                    
                    Button {
                        gold.goldAmount.amount += 20
                    } label: {
                        Text("Get 20 Gold")
                    }
                    .menuButtons()
                    .background(.yellow)
                    .cornerRadius(12)
                    .padding()
                    
                    Button {
                        gold.goldAmount.amount += 50
                    } label: {
                        Text("Get 50 Gold")
                    }
                    .menuButtons()
                    .background(.yellow)
                    .cornerRadius(12)
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
        Store(gold: Gold())
    }
}
