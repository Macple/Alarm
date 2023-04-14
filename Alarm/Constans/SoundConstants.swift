//
//  SoundConstants.swift
//  Alarm
//
//  Created by Maciej Plewko on 14/04/2023.
//

import Foundation

enum Sounds: String, CaseIterable {
    case wake_up = "Sound Wake up"
    case lagrima = "Lagrima"
    
    func formatSoundName() -> String {
        String(describing: self)
            .replacingOccurrences(of: "_", with: " ")
            .capitalized
    }
}
