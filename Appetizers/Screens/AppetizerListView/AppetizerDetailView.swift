//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 20/01/2021.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding()
                
                HStack (spacing: 40){
                    SubItemView(title: "Calories", value: appetizer.calories)
                    
                    SubItemView(title: "Carbs", value: appetizer.carbs)
                    
                    SubItemView(title: "Protein", value: appetizer.protein)
                }
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowing = false
            } label: {
                APButton(title: "$\(String(format: "%.2f", appetizer.price)) - Add to order")
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowing = false
        } label: {
            DismissButton()
        },
        alignment: .topTrailing)
        .transition(.slide)
    }
}


struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowing: .constant(true))
    }
}

struct SubItemView: View {
    
    var title: String
    var value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .bold()
            Text("\(value)")
                .foregroundColor(.secondary)
                .italic()
        }
    }
}
