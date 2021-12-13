//
//  OrderViewModel.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 30/01/2021.
//

import SwiftUI

final class OrderViewModel: ObservableObject {
    
    @Published var alertItem        = AlertContext.orderPlaced
    @Published var isShowingAlert   = false
    @Published var isSource         = false
}
