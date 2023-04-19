//
//  CircularTImeView.swift
//  Alarm
//
//  Created by Maciej Plewko on 19/04/2023.
//

import SwiftUI

struct CircularTimeView: View {
    let currentAlarmIndex: Int?
    @State var alarmModel: AlarmModel
    
    let size: CGFloat
    
    var startTime: Date {
        alarmModel.start
    }
    var endTime: Date {
        alarmModel.end
    }
    var percentDifference: CGFloat {
        let value = dateToPercent(date: endTime) - dateToPercent(date: startTime)
        return value >= 0 ? value : 1 + value
    }
    var startDateToPercent: CGFloat {
        dateToPercent(date: startTime)
    }
    var endDateToPercent: CGFloat {
        startDateToPercent + percentDifference
    }
    var rotateCircleOffset: CGFloat {
        360 * startDateToPercent
    }
    
    var body: some View {
        ZStack {
            CentralDatePickerView(size: size, alarmModel: $alarmModel)
            
            // Progression - black curve
            TimeArcView(
                percentDifference: percentDifference,
                strokeStyle: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round),
                size: size,
                rotateCircleOffset: rotateCircleOffset,
                color: .black)
            
            // Progrssion - gray ticks
            TimeArcView(
                percentDifference: percentDifference,
                strokeStyle: StrokeStyle(lineWidth: 15, dash: [1, 2]),
                size: size,
                rotateCircleOffset: rotateCircleOffset,
                color: .gray)
            
            // First icon
            
            // Second icon
        }
    }
}

struct CircularTImeView_Previews: PreviewProvider {
    static var previews: some View {
        CircularTimeView(currentAlarmIndex: nil, alarmModel: .DefaultAlarm(), size: screenWidth / 2)
    }
}
