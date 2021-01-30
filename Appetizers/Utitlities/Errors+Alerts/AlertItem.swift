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
    
    //MARK: - Networking Alerts
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server, if this persists please conact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please try again later or contact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("The data recieved from the server was invalid. Please contact support."),
                                            dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts
    
    static let emptyDetails     = AlertItem(title: Text("Empty Details"),
                                            message: Text("Plese make sure all of ther fields are complete in order to save your changes."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure the email you have entered is valid."),
                                            dismissButton: .default(Text("OK")))
    
    static let savedSuccessfully = AlertItem(title: Text("Details Saved Successfully"),
                                             message: Text("Contratulations, your details have been saved succesfully."),
                                             dismissButton: .default(Text("OK")))
    
    static let retrievedError   = AlertItem(title: Text("Error"),
                                            message: Text("There was an error trying to save/retrive your details."),
                                            dismissButton: .default(Text("OK")))
    
    //MARK: - Order Alerts
    
    static let orderPlaced   = AlertItem(title: Text("Order Placed"),
                                            message: Text("Your order has been succesfully placed."),
                                            dismissButton: .default(Text("OK")))
}
