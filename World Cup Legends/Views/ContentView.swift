
//  ContentView.swift
//  World Cup Legends
//
//  Created by Valerian on 21/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlayng = false
    @State private var bg = "background"

    var body: some View {
        if isPlayng {
            LevelsView()
        } else {
            VStack {
                Spacer()
                Text("Let's see how much you know about World Cup legends. You have 90 seconds in each round.")
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(10)
                    .background(.green)
                    .cornerRadius(10)
                Spacer()
                Spacer()
                Spacer()
                Button {
                    isPlayng.toggle()
                } label: {
                    Text("Start")
                }
                .menuButtons()
                .cornerRadius(10)
                .padding()
                Spacer()
            }
            .background(
                Image(bg)
                    .resizable()
                    .scaledToFill()
            )
            .ignoresSafeArea()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
