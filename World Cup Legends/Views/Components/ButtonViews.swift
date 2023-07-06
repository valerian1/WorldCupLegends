//
//  Views.swift
//  World Cup Legends
//
//  Created by VLR on 07/11/22.
//

import SwiftUI

// View Modifiers
struct AnswerButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 170, height: 60)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(10)
            .font(.title)
            .padding(6)
    }
}

extension View {
    func answerButtonStyle() -> some View {
        modifier(AnswerButtonStyle())
    }
}

// Views
struct MenuButton: View {
    var body: some View {
        VStack(spacing: 4) {
            Rectangle()
                .frame(width: 30, height: 3)
                .cornerRadius(4)
            
            Rectangle()
                .frame(width: 30, height: 3)
                .cornerRadius(4)
            
            Rectangle()
                .frame(width: 30, height: 3)
                .cornerRadius(4)
        }
    }
}
