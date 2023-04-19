//
//  AddEditCircularAlarmView.swift
//  Alarm
//
//  Created by Maciej Plewko on 19/04/2023.
//

import SwiftUI

struct AddEditCircularAlarmView: View {
    let currentAlarmIndex: Int?
    @State var alarmModel: AlarmModel
    
    var body: some View {
        VStack {
            CancelSaveAlarm(currentAlarmIndex: currentAlarmIndex, alarmModel: $alarmModel)
            
            AlarmToggleView(alarmEnabled: $alarmModel.alarmEnabled)
            
            Divider()
            Spacer()
            
            CircularTimeView(currentAlarmIndex: currentAlarmIndex, alarmModel: alarmModel, size: screenWidth / 2)
            
            Spacer()
            
        }.padding()
    }
}

struct AddEditCircularAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AddEditCircularAlarmView(currentAlarmIndex: nil, alarmModel: .DefaultAlarm())
    }
}
