//
//  ListOfAlarmsView.swift
//  Alarm
//
//  Created by Maciej Plewko on 19/04/2023.
//

import SwiftUI

struct ListOfAlarmsView: View {
    var alarmViewModels: [AlarmModel]
    
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    ForEach(0..<alarmViewModels.count, id: \.self) { i in
                        let alarmModel = alarmViewModels[i]
                        
                        NavigationLink(destination: {
                            MainAddEditAlarmView(currentAlarmIndex: i, alarmModel: alarmModel)
                        }, label: {
                            AlarmRowView(model: alarmModel, i: i)
                        })
                    }
                }
            }
            .navigationTitle("Alarm list")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        MainAddEditAlarmView(currentAlarmIndex: nil, alarmModel: .DefaultAlarm())
                    }, label: {
                        Text("+")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(black)
                    })
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
        }
    }
}

struct ListOfAlarmsView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfAlarmsView(alarmViewModels: AlarmModel.DummyAlarmData())
    }
}
