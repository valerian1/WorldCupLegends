//
//  Menu.swift
//  World Cup Legends
//
//  Created by VLR on 22/09/22.
//

import SwiftUI

struct Menu: View {
    @State private var levelScreen = false
    @State private var inStore = false
    @State private var inStats = false
    
    var body: some View {
        VStack {
            Spacer()
            if levelScreen {
                LevelsView()
            } else if inStore {
                Store()
            } else if inStats {
                Stats()
            } else {
                Button {
                    levelScreen.toggle()
                } label: {
                    Text("Play")
                }
                .menuButtons()

                Button {
                    inStore.toggle()
                } label: {
                    Text("Store")
                }
                .menuButtons()
                
                Button {
                    inStats.toggle()
                } label: {
                    Text("Stats")
                }
                .menuButtons()
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

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}


struct MenuButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 270, height: 60)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)
            .font(.title)
            .padding(6)
    }
}

extension View {
    func menuButtons() -> some View {
        modifier(MenuButtonStyle())
    }
}