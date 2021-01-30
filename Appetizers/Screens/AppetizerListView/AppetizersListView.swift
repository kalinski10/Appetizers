//
//  Appetizer.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 11/01/2021.
//

import SwiftUI

struct AppetizersListView: View {
    
    @EnvironmentObject var order: Order
    @StateObject var viewModel = AppetizersListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.showDetailView(appetizer)
                        }
                        .contextMenu(menuItems: {
                            Button { order.add(appetizer) } label: { Text("Add to order") }
                            Button { viewModel.showDetailView(appetizer) } label: { Text("View details") }
                        })
                }
                .navigationTitle("🍕Appetizers")
                .disabled(viewModel.isShowingDetailView)
            }
            .onAppear { viewModel.getAppetizers() }
            .blur(radius: viewModel.isShowingDetailView ? 20 : 0)
            
            if viewModel.isShowingDetailView {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!, isShowing: $viewModel.isShowingDetailView)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
    
}

struct Appetizer_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
