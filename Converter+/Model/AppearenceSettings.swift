//
//  AppearenceSettings.swift
//  Converter+
//
//  Created by karlis.stekels on 12/02/2021.
//

import Foundation

struct AppearenceSettings {
    
    func updateApearence(condition: Int) {
        switch condition {
        case 1:
            view.backgroundColor = .white
        case 2:
            view.backgroundColor = .black
        default:
            view.backgroundColor = .systemGroupedBackground
        }
    }
}
