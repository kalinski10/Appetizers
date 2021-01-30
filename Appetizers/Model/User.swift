//
//  User.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 29/01/2021.
//

import Foundation


struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthday        = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
