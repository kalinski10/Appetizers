//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 24/01/2021.
//

import SwiftUI

final class AccountViewModel: ObservableObject {

    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    
    var isValid: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.emptyDetails
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
      
        return true
    }
    
    func saveChanges() {
        guard isValid else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.savedSuccessfully
        } catch {
            alertItem = AlertContext.retrievedError
        }
    }
    
    
    func retrieveUserDetails() {
        
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.retrievedError
        }
    }
}
