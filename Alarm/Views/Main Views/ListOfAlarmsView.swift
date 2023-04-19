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
                            AddEditAlarmView(currenAlarmIndex: i, alarmModel: alarmModel)
                        }, label: {
                            Text(" \(i) Alarm Row View")
                        })
                    }
                }
                
                FourCoolCircles()
                    .opacity(0.3)
            }
            .navigationTitle("Alarm list")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        AddEditAlarmView(currenAlarmIndex: nil, alarmModel: .DefaultAlarm())
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
