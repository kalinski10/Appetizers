//
//  RemoteImages.swift
//  Appetizers
//
//  Created by Kalin Balabanov on 20/01/2021.
//

import SwiftUI

final class ImageLoader: ObservableObject { // acts as a view model to download the image and check if we have one
    
    @Published var image: Image? = nil
    
    func load(from urlString: String) {
        NetworkManager.shared.downloadImages(fromURLString: urlString) { uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}


struct RemoteImage: View { // acts as a secondary component this is essentially either the view or the placeholder
    
    let image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}


struct AppetizerRemoteImage: View { // sets the images as nil initially and if we have an image it downloads it and sets it
    
    @StateObject var imageLoader = ImageLoader()
    
    var urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(from: urlString)
            }
    }
}
