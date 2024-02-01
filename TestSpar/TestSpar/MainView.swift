//
//  MainView.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct MainView: View {
  let storageManager = StorageManager.shared
  let product: Product
  
  var body: some View {
    ScrollView(.vertical) {
      Divider()
      
      VStack (alignment: .leading, spacing: 20) {
        ImageProduct(product: product)
        InfoAboutProduct(product: product)
        ReviewsProduct(reviews: product.reviews)
      }
    }
    .overlay(PriceProduct(product: product), alignment: .bottom)
  }
}

#Preview {
  MainView(product: StorageManager.shared.getAllProducts()[0])
}
