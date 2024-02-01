//
//  StorageManager.swift
//  TestSpar
//
//  Created by Александра Савчук on 01.02.2024.
//

import SwiftUI

class StorageManager {
    static let shared = StorageManager()

    private var products: [Product]

    private init() {
        self.products = [
            Product(
                id: UUID(),
                name: "Добавка \"Липа\" \nк чаю 200 г",
                image: Image("sparLipa"),
                description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствует укреплению стенки сосудов.",
                fromCountry: Country(contry: "Испания", town: "Риоха", image: nil),
                specifications: Specifications(
                    production: Country(contry: "Россия", town: "Краснодарский край", image: nil),
                    calories: "25 ккал,\n105 кДж",
                    fats: "0.1 г",
                    proteins: "1.3 г",
                    carbohydrates: "3.3 г"
                ),
                reviews: [
                    Review(id: UUID(), userName: "Александр В.", date: "7 мая 2021", rating: 4.1, description: "Хорошая добавка мне очень понравилось! Хочу чтобы все добавки были такими!"),
                    Review(id: UUID(), userName: "Екатерина С.", date: "10 апреля 2021", rating: 4.1, description: "Неплохой продукт, но цена высоковата."),
                    Review(id: UUID(), userName: "Михаил Г.", date: "2 июня 2021", rating: 4.1, description: "Отличное качество, доволен покупкой!"),
                    Review(id: UUID(), userName: "Ирина П.", date: "15 сентября 2021", rating: 4.1, description: "Вкусно и полезно, рекомендую!")
                ],
                price: Price(
                    regularKgPrice: 199.9,
                    discountKgPrice: 55.9,
                    regularItemPrice: 199.9,
                    discountItemPrice: 55.9
                ),
                unitMeasure: .item
            )
        ]
    }

    func getAllProducts() -> [Product] {
        return products
    }
}
