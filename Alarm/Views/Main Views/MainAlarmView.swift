//
//  ContentView.swift
//  Alarm
//
//  Created by Maciej Plewko on 13/04/2023.
//

import SwiftUI

struct MainAlarmView: View {
    var body: some View {
        TabView {
            ListOfAlarmsView(alarmViewModels: AlarmModel.DummyAlarmData())
                .tabItem({
                    Label("Alarms", systemImage: "alarm.fill")
                })
            
            AboutView()
                .tabItem({
                    Label("About", systemImage: "info.circle.fill")
                })
        }
    }
}

struct MainAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        MainAlarmView()
    }
}
