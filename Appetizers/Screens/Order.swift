//
//  Orders.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 11/01/2021.
//

import SwiftUI

struct Order: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("Orders")
        }
        
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Order()
    }
}
