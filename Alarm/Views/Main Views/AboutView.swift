//
//  AboutView.swift
//  Alarm
//
//  Created by Maciej Plewko on 18/04/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            MainGradient(endRadius: screenHeight / 2)
                .opacity(0.8)
                .ignoresSafeArea()
            
            VStack {
                VStack(spacing: 30) {
                    CoolTextView(text: "About", size: 48)
                    Text("The UI for this nice Alarm app was largely inspired by the amazing work of Anton Leogky.")
                        .font(.title)
                }
                .multilineTextAlignment(.leading)
                .minimumScaleFactor(0.1)
                .padding()
                
                Spacer()
                
                Image(appImageSamples)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .frame(
                        width: screenWidth * 0.8
                    )
                
                Spacer()
                
                if let url = URL(string: "https://dribbble.com/antonleogky") {
                    Link(destination: url,
                         label: {
                        ButtonView(text: "to Anton's page")
                            .padding()
                    })
                }
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
