//
//  CharacteristicItemView.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

struct CharacteristicItemView: View {
  let characteristicName: String
  let characteristicValue: String

  var body: some View {
    HStack(alignment: .center) {
      Text(characteristicName)
        .multilineTextAlignment(.leading)
        .lineLimit(2)

      DottedSeparator()

      Text(characteristicValue)
        .multilineTextAlignment(.trailing)
        .lineLimit(2)
        .minimumScaleFactor(0.5)
    }
    .font(.footnote)
  }
}

#Preview {
  CharacteristicItemView(characteristicName: "Производство", characteristicValue: "Россия, Краснодарский край")
}
