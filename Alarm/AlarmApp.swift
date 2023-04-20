//
//  AlarmApp.swift
//  Alarm
//
//  Created by Maciej Plewko on 13/04/2023.
//

import SwiftUI

@main
struct AlarmApp: App {
    var body: some Scene {
        WindowGroup {
            MainAlarmView()
        }
    }
}

struct Previews_AlarmApp_Previews: PreviewProvider {
    static var previews: some View {
        MainAlarmView()
    }
}
