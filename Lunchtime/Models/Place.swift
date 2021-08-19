//
//  Place.swift
//  Lunchtime
//
//  Created by Kyle Rohr on 16/8/21.
//

import Foundation

struct Place: Codable {

    let id: String
    let name: String
    let address: String
    let photoUrl: String
    let priceLevel: PriceLevel
    let rating: Double
    let userRatingsTotal: Int

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case address = "adr_address"
        case photoUrl = "photo"
        case priceLevel = "price_level"
        case rating = "rating"
        case userRatingsTotal = "user_ratings_total"
    }

}

extension Place {

    enum PriceLevel: Int, Codable {
        case free
        case inexpensive
        case moderate
        case expensive
        case veryExpensive
    }

}
