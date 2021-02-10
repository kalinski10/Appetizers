//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 18/01/2021.
//

import SwiftUI


final class AppetizersListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem:  AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetailView = false
    
    var selectedAppetizer: Appetizer? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    func getAppetizers() {
        isLoading = true
        
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                
                isLoading = false
                
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    }
                }
            }
        }
    }
}
