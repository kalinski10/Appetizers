//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 12/01/2021.
//

import SwiftUI

struct AppetizerListCell: View {
    
    var appetizer: Appetizer
    var namespace: Namespace.ID
    
    @Binding var isSource: Bool
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .matchedGeometryEffect(id: appetizer.id, in: namespace, isSource: !isSource)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer, namespace: namespace, isSource: .constant(true))
    }
}
