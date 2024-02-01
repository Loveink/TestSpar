//
//  ReviewView.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct ReviewView: View {
  let review: Review
  
  var body: some View {
    ZStack(alignment: .leading) {
      Color.white
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .shadow(color: .black.opacity(0.1), radius: 6)
      
      VStack(alignment: .leading, spacing: 2) {
        Text(review.userName)
          .fontWeight(.bold)
        Text(review.date)
          .font(.footnote)
          .fontWeight(.light)
          .foregroundColor(.gray)
        
        HStack(spacing: 4) {
          ForEach(0..<5, id: \.self) { index in
            Image(systemName: index < Int(review.rating) ? "star.fill" : "star")
              .foregroundColor(index == 4 ? .gray.opacity(0.3) : .yellow)
          }
        }
        
        Text(review.description)
          .font(.footnote)
      }
      .padding()
    }
    .padding(.vertical)
    .frame(width: 250, height: 180)
  }
}

#Preview {
  ReviewView(review: StorageManager.shared.getAllProducts()[0].reviews[0])
}
