//
//  GrayedTextView.swift
//  Alarm
//
//  Created by Maciej Plewko on 13/04/2023.
//

import SwiftUI

struct GrayedTextView: View {
    let text: LocalizedStringKey
    var font = Font.headline
    
    var body: some View {
        Text(text)
            .foregroundColor(.gray)
            .font(font)
    }
}

struct GrayedTextView_Previews: PreviewProvider {
    static var previews: some View {
        GrayedTextView(text: "Hello")
    }
}
