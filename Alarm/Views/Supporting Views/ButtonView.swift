//
//  ButtonView.swift
//  Alarm
//
//  Created by Maciej Plewko on 18/04/2023.
//

import SwiftUI

struct ButtonView: View {
    let text: LocalizedStringKey
    var endRadius = 40.0
    var scaleX = 3.0
    
    var body: some View {
        Text(text)
            .foregroundColor(black)
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                    MainGradient(
                        endRadius: 40,
                        scaleX: 3
                )
                    .cornerRadius(30)
            )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ButtonView(text: "add alarm")
            ButtonView(text: "next")
            ButtonView(text: "create")
        }
    }
}
