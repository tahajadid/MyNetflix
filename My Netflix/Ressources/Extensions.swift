//
//  Extensions.swift
//  My Netflix
//
//  Created by taha_jadid on 11/5/2022.
//

import Foundation

extension String {
    
    func capitalizedFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
