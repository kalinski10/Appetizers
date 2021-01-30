//
//  String+EXT.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 29/01/2021.
//

import Foundation

extension String {
    
    // Common error handling for Validating email FORMAT
    var isValidEmail: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
    
}

