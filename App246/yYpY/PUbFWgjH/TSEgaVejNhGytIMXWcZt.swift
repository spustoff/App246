//
//  ConvertDate+Extenses.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI

extension Date {
    
    func wYIAhNuCxu(format: String) -> String {
        
        let date = self
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
}
