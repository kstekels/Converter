//
//  TemperatureCalculation.swift
//  Converter+
//
//  Created by karlis.stekels on 11/02/2021.
//

import Foundation


struct TemperatureCalculation {
    
    mutating func convertTemperature(_ celsius: Int) -> (fahrenheit: String, kelvin: String) {
        
        let fahrenheit = String(format: "%.2f", ((Double(celsius) * 9/5) + 32))
        let kelvin = String(format: "%.2f", Double(celsius) + 273.15)
        
        
        
        return(fahrenheit, kelvin)
    }
    
    
    
}
