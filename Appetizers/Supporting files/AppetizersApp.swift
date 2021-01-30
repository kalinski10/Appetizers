//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 11/01/2021.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(Order())
        }
    }
}
