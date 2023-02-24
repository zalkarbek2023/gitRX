//
//  NetworkAPI.swift
//  CocktailsHW
//
//  Created by zalkarbek on 22/2/23.
//

import Foundation

// MARK: - Drink
struct Drink: Codable {
    let drinks: [DrinkElement]
}

// MARK: - DrinkElement
struct DrinkElement: Codable {
    let id: Int
    let title: String
}

final class NetworkAPI {
    static let shared = NetworkAPI()

    private init() {}


}

