//
//  CachedUser+CoreDataProperties.swift
//  CoreDataChallenge
//
//  Created by Andres Pulgarin on 6/5/23.
//
//

import Foundation
import CoreData


extension CachedUser {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CachedUser> {
        return NSFetchRequest<CachedUser>(entityName: "CachedUser")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var isActive: Bool
    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var company: String?
    @NSManaged public var friends: NSSet?
    
    public var wrappedId: UUID {
            id ?? UUID()
        }
        
    public var wrappedName: String {
        name ?? "unknown name"
    }
    
    public var wrappedAge: Int16 {
        age
    }
    public var wrappedIsActive: Bool {
        isActive
    }
        
    public var wrappedCompany: String {
        company ?? "unknown company"
    }
    
    public var friendsList: [CachedFriend] {
        let set = friends as? Set<CachedFriend> ?? []
        
        return set.sorted {
            $0.id < $1.id
        }
    }
 

}

// MARK: Generated accessors for friends
extension CachedUser {

    @objc(addFriendsObject:)
    @NSManaged public func addToFriends(_ value: CachedFriend)

    @objc(removeFriendsObject:)
    @NSManaged public func removeFromFriends(_ value: CachedFriend)

    @objc(addFriends:)
    @NSManaged public func addToFriends(_ values: NSSet)

    @objc(removeFriends:)
    @NSManaged public func removeFromFriends(_ values: NSSet)

}

extension CachedUser : Identifiable {

}
