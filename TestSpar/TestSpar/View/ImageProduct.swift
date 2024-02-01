//
//  ImageProduct.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct ImageProduct: View {
  var product: Product
  
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      ZStack(alignment: .topLeading) {
        product.image
          .resizable()
          .scaledToFit()
        
        Text("Цена по карте")
          .font(.caption)
          .foregroundColor(.white)
          .padding(5)
          .background(
            RoundedRectangle(cornerRadius: 3)
              .fill(Color.green)
          )
      }
      .padding(.bottom, 30)
      ReviewsAndDiscountView()
    }
    .padding(.horizontal)
  }
}

struct ReviewsAndDiscountView: View {
  var body: some View {
    HStack(alignment: .bottom) {
      HStack {
        Image(systemName: "star.fill")
          .foregroundColor(.yellow)
        
        Text("4.1")
        
        Divider()
          .frame(height: 24)
          .overlay(Color.black)
        
        Text("19 отзывов")
          .foregroundColor(.gray)
      }
      
      Spacer()
      
      Text("–5%")
        .font(.caption)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .padding(8)
        .background(
          DiscountBackview()
            .foregroundColor(.red)
        )
    }
  }
}

#Preview {
  ImageProduct(product: StorageManager.shared.getAllProducts()[0])
}
