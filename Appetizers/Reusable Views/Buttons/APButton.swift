//
//  APButton.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 20/01/2021.
//

import SwiftUI

struct APButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .foregroundColor(.white)
            .frame(width: 280, height: 55)
            .background(Color.brandPrimary)
            .cornerRadius(8)
            .padding()
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "$\(String(format: "%.2f", 13.00)) - Add to order")
    }
}
