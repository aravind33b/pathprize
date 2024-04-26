//
//  OfferModel.swift
//  PathPrize
//
//  Created by nagesh sairam on 4/25/24.
//

import Foundation


struct OfferModel: Codable {
    let id: Int64?               // Optional because it's generated by the database and may not be available initially
    let createdAt: Date          // Timestamp with time zone
    let objectUrl: String?       // Optional URL as a string
    let businessId: Int64?       // Optional foreign key reference to a business
    let latitude: Double?        // Optional geographic latitude
    let longitude: Double?       // Optional geographic longitude
    let status: Bool?            // Optional status as a Boolean
    let name: String?            // Optional name of the offer
    let count: Int64?            // Optional count

    enum CodingKeys: String, CodingKey {
        case id
        case createdAt = "created_at"
        case objectUrl = "object_url"
        case businessId = "business_id"
        case latitude
        case longitude
        case status
        case name
        case count
    }
}