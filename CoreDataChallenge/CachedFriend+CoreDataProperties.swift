//
//  CachedFriend+CoreDataProperties.swift
//  CoreDataChallenge
//
//  Created by Andres Pulgarin on 6/5/23.
//
//

import Foundation
import CoreData


extension CachedFriend {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CachedFriend> {
        return NSFetchRequest<CachedFriend>(entityName: "CachedFriend")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var user: CachedUser?
    
    public var wrappedId: UUID {
            id ?? UUID()
        }
        
        public var wrappedName: String {
            name ?? "unknown name"
        }

}

extension CachedFriend : Identifiable {

}
