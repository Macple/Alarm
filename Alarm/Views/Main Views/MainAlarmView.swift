//
//  ContentView.swift
//  Alarm
//
//  Created by Maciej Plewko on 13/04/2023.
//

import SwiftUI

struct MainAlarmView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Alarm!")
        }
        .padding()
    }
}

struct MainAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        MainAlarmView()
    }
}
