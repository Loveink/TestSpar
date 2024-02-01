//
//  Models.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import Foundation
import SwiftUI

struct Product {
  let id: UUID
  let name: String
  let image: Image
  let description: String
  let fromCountry: Country
  let specifications: Specifications
  let reviews: [Review]
  let price: Price
  let unitMeasure: Unit
}

struct Country {
  let contry: String
  let town: String
  let image: Image?
}

struct Specifications {
  let production: Country
  let calories: String
  let fats: String
  let proteins: String
  let carbohydrates: String
}

struct Review {
  let id: UUID
  let userName: String
  let date: String
  let rating: Double
  let description: String
}

struct Price {
    let regularKgPrice: Double
    let discountKgPrice: Double
    let regularItemPrice: Double
    let discountItemPrice: Double
}

enum Unit: String, CaseIterable {
  case item = "шт"
  case kilogramm = "кг"
}
