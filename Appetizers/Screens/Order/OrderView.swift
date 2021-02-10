//
//  Orders.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 11/01/2021.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    @StateObject var viewModel = OrderViewModel()
    
    @Namespace var namespace
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
//                            AppetizerListCell(appetizer: appetizer, namespace: namespace)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Placed Order")
                        order.items.removeAll()
                        viewModel.isShowingAlert = true
                    } label: {
                        APButton(title: "$\(String(format: "%.2f", order.totalAmount)) - Place Order")
                    }
                }
                
                if order.items.isEmpty {
                    EmptyStateView(image: "empty-order", message: "You don't have any appetizers selected.\nGo ahead and choose some goodies")
                }
                
            }
            .navigationTitle("Orders")
            .alert(isPresented: $viewModel.isShowingAlert, content: {
                Alert(title: viewModel.alertItem.title, message: viewModel.alertItem.message, dismissButton: viewModel.alertItem.dismissButton)
            })
        }
    }    
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
