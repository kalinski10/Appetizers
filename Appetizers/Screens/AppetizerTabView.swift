//
//  TabBarView.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 11/01/2021.
//

import SwiftUI

struct AppetizerTabView: View {
    
    var body: some View {
        
        TabView {
            
            AppetizersListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Appetizers")
                }
            
            Account()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Orders")
                }
            
        }
        .accentColor(.brandPrimary)
    }
    
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
