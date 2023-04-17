//
//  EnableNotifications.swift
//  Alarm
//
//  Created by Maciej Plewko on 17/04/2023.
//

import SwiftUI

struct EnableNotifications: View {
    var body: some View {
        ZStack {
            FourCoolCircles()
            VStack {
                Spacer()
                CoolTextView(
                    text: LocalizedStringKey("Enable notifications, please"),
                    size: 48)
                .multilineTextAlignment(.center)
                Spacer()
                
                Button(action: {
                    // TODO: Enable notifications
                    print("TODO: Enable notifications")
                }, label:{
                    ButtonView(text: "enable")
                        .padding()
                })
            }
        }
    }
}

struct EnableNotifications_Previews: PreviewProvider {
    static var previews: some View {
        EnableNotifications()
    }
}
