//
//  Friend.swift
//  CoreDataChallenge
//
//  Created by Andres Pulgarin on 6/4/23.
//

import Foundation

struct Friend: Codable, Identifiable {
    let id: UUID
    let name: String
}
