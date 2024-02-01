//
//  PriceProduct.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct PriceProduct: View {
  var product: Product
  @State private var selectedUnit: Unit = .item
  
  var body: some View {
    VStack {
      VStack(spacing: 16) {
        Picker("Единица измерения", selection: $selectedUnit) {
          ForEach(Unit.allCases, id: \.self) { unit in
            Text(unit.rawValue.capitalized)
          }
        }
        .pickerStyle(SegmentedPickerStyle())
        .disabled(true)
        
        HStack {
          VStack(alignment: .leading) {
            HStack {
              Text(String(format: "%.1f", product.price.discountItemPrice) + " ₽/" + product.unitMeasure.rawValue)
                .font(.title)
                .fontWeight(.heavy)
            }
            Text(String(format: "%.1f", product.price.regularItemPrice))
              .font(.caption)
              .strikethrough()
              .foregroundColor(.gray)
          }
          
          Spacer()
          
          HStack {
            Button(action: {}, label: {
              Text("—")
                .font(.title3)
                .foregroundColor(.white)
                .padding(.horizontal)
            })
            
            VStack {
              Text("1 \(product.unitMeasure.rawValue)")
                .foregroundColor(.white)
                .fontWeight(.bold)
              
              Text("120,0 ₽")
                .font(.footnote)
                .foregroundColor(.white)
            }
            .fixedSize()
            .padding(.vertical, 6)
            .padding(.horizontal)
            
            Button(action: {}, label: {
              Text("+")
                .font(.title)
                .foregroundColor(.white)
                .padding(.horizontal)
            })
          }
          .background(
            Capsule()
              .fill(.green)
          )
        }
      }
      .padding()
    }
    .background(Color.white)
  }
}

#Preview {
  PriceProduct(product: StorageManager.shared.getAllProducts()[0])
}

