//
//  CancelSaveAlarm.swift
//  Alarm
//
//  Created by Maciej Plewko on 18/04/2023.
//

import SwiftUI

struct CancelSaveAlarm: View {
    let currentAlarmIndex: Int?
    @Binding var alarmModel: AlarmModel
    
    var body: some View {
        HStack {
            // Cancel
            Button(action: {
                print("Cancel - todo")
            }, label: {
                Text("Cancel")
            })
            Spacer()
            //Save
            Button(action: {
                print("Save - todo")
                if let currentAlarmIndex = currentAlarmIndex {
                    //TODO: Add alarm to view model
                    print("\(currentAlarmIndex)")
                } else {
                    // TODO: Append alarm to view model
                }
            }, label: {
                Text("Save")
            })
        }
    }
}

struct CancelSaveAlarm_Previews: PreviewProvider {
    static var previews: some View {
        CancelSaveAlarm(currentAlarmIndex: nil, alarmModel: .constant(.DefaultAlarm()))
    }
}
