//
//  CentralDatePickerView.swift
//  Alarm
//
//  Created by Maciej Plewko on 19/04/2023.
//

import SwiftUI

struct CentralDatePickerView: View {
    let size: CGFloat
    @Binding var alarmModel: AlarmModel
    
    var lineWidth: CGFloat = 10
    
    var body: some View {
        Circle()
            .stroke(lightGray, lineWidth: lineWidth)
            .frame(width: size, height: size)
            .overlay(
                VStack {
                    VStack {
                        GrayedTextView(text: "start", font: .caption)
                        TimePicker(time: $alarmModel.start.animation(), scale: 1)
                    }
                    Spacer()
                    GrayedTextView(text: "Set the alarm")
                    Spacer()
                    VStack {
                        VStack {
                            GrayedTextView(text: "end", font: .caption)
                            TimePicker(time: $alarmModel.end.animation(), scale: 1)
                        }
                    }
                }
                    .padding()
                    .padding(.vertical)
            )
    }
}

struct CentralDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        CentralDatePickerView(size: 200, alarmModel: .constant(.DefaultAlarm()))
    }
}
