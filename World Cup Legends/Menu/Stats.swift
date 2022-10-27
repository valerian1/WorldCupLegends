
//  Stats.swift
//  World Cup Legends
//
//  Created by VLR on 22/09/22.
//

import SwiftUI

struct Stats: View {
    @State private var onMenu = false
    
    var body: some View {
        VStack {
            
            if onMenu {
                Menu()
            } else {
                Button {
                    onMenu.toggle()
                } label: {
                    Text("Menu")
                }
                .menuButtons()
            }
        }
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}
