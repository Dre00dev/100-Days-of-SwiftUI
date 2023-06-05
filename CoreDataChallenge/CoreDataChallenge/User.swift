//
//  User.swift
//  CoreDataChallenge
//
//  Created by Andres Pulgarin on 6/4/23.
//

import Foundation

struct User: Codable, Identifiable {
    let id: UUID
    var isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
}


