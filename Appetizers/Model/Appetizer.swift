//
//  Appetizer.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 12/01/2021.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id:             Int
    let name:           String
    let price:          Double
    let calories:       Int
    let protein:        Int
    let carbs:          Int
    let description:    String
    let imageURL:       String
}


struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer  = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           price: 9.99,
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99,
                                           description: "This is a test description",
                                           imageURL: "")
    
    static let appetizers       = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
}
