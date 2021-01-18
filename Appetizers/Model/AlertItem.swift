//
//  AlertItem.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 18/01/2021.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id =            UUID()
    let title:          Text
    let message:        Text
    let dismissButton:  Alert.Button
}


struct AlertContext {    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                           message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                           message: Text("There was an issue connecting to the server, if this persists please conact support."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later or contact support."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidData = AlertItem(title: Text("Server Error"),
                                           message: Text("The data recieved from the server was invalid. Please contact support."),
                                           dismissButton: .default(Text("OK")))
}
