//
//  EmptyOrderView.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 30/01/2021.
//

import SwiftUI

struct EmptyStateView: View {
    
    let image:      String
    let message:    String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyOrderView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView(image: "empty-order", message: "This is a test message.\nMaking it a little loneger for testing.")
    }
}
