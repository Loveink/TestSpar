//
//  InfoAboutProduct.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct InfoAboutProduct: View {
  var product: Product

  var body: some View {
    VStack(alignment: .leading, spacing: 15) {
      titleProduct
      countryProduct
      descriptionProduct
      characteristicProduct
      allCharacteristic
    }
    .padding(.horizontal)
  }

  private var titleProduct: some View {
    Text(product.name)
      .font(.title)
      .fontWeight(.bold)
  }

  private var countryProduct: some View {
    HStack {
      Image("SpainFlag")
        .resizable()
        .scaledToFit()
        .clipShape(Circle())
        .frame(width: 36)

      Text("\(product.fromCountry.contry), \(product.fromCountry.town)")
        .font(.footnote)
    }
  }

  private var descriptionProduct: some View {
    VStack(alignment: .leading, spacing: 12) {
      Text("Описание")
        .fontWeight(.semibold)

      Text(product.description)
        .font(.callout)
    }
  }

  private var characteristicProduct: some View {
    VStack(alignment: .leading, spacing: 12) {
      Text("Основные характеристики")
        .fontWeight(.semibold)

      VStack(alignment: .leading, spacing: 16) {
        CharacteristicItemView(characteristicName: "Производство", characteristicValue: "\(product.specifications.production.contry), \(product.specifications.production.town)")
        CharacteristicItemView(characteristicName: "Энергетическая ценность, ккал/100 г", characteristicValue: product.specifications.calories)
        CharacteristicItemView(characteristicName: "Жиры/100 г", characteristicValue: product.specifications.fats)
        CharacteristicItemView(characteristicName: "Белки/100 г", characteristicValue: product.specifications.proteins)
        CharacteristicItemView(characteristicName: "Углеводы/100 г", characteristicValue: product.specifications.carbohydrates)
      }
    }
  }

  private var allCharacteristic: some View {
    Button(action: {}, label: {
      Text("Все характеристики")
        .foregroundColor(.green)
        .fontWeight(.heavy)
    })
  }
}

#Preview {
  InfoAboutProduct(product: StorageManager.shared.getAllProducts()[0])
}
