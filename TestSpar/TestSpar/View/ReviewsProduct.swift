//
//  ReviewsProduct.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct ReviewsProduct: View {
  var reviews: [Review]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      reviewsProduct
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 18) {
          ForEach(reviews, id: \.id) { review in
            ReviewView(review: review)
          }
        }
        .padding(.horizontal)
      }
      
      sendReviewButton
    }
    .padding(.bottom, 135)
  }
  
  private var reviewsProduct: some View {
    HStack {
      Text("Отзывы")
        .font(.title3)
        .fontWeight(.bold)
      
      Spacer()
      
      Button(action: {}, label: {
        Text("Все \(reviews.count)")
          .foregroundColor(.green)
          .fontWeight(.bold)
      })
    }
    .padding(.horizontal)
  }
  
  private var sendReviewButton: some View {
    Button(action: {}, label: {
      Text("Оставить отзыв")
        .fontWeight(.bold)
        .frame(maxWidth: .infinity)
        .foregroundColor(.green)
        .padding(.vertical, 10)
        .background(
          Capsule()
            .stroke(.green, lineWidth: 3)
        )
    })
    .padding(.horizontal)
  }
}

#Preview {
  ReviewsProduct(reviews: StorageManager.shared.getAllProducts()[0].reviews)
}
