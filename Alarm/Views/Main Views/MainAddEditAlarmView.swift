//
//  MainAddEditView.swift
//  Alarm
//
//  Created by Maciej Plewko on 20/04/2023.
//

import SwiftUI

struct MainAddEditAlarmView: View {
    let currentAlarmIndex: Int?
    @State var alarmModel: AlarmModel
    @State private var selectedTab = "One"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            AddEditAlarmView(currenAlarmIndex: currentAlarmIndex, alarmModel: alarmModel)
                .tag("One")
            
            AddEditCircularAlarmView(currentAlarmIndex: currentAlarmIndex, alarmModel: alarmModel)
                .tag("Two")
        }
        .onAppear {
            UIPageControl
                .appearance()
                .currentPageIndicatorTintColor = .blue
                
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .ignoresSafeArea()
    }
}

struct MainAddEditView_Previews: PreviewProvider {
    static var previews: some View {
        MainAddEditAlarmView(currentAlarmIndex: nil, alarmModel: .DefaultAlarm())
    }
}
