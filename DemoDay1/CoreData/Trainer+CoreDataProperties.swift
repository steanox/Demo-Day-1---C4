//
//  Trainer+CoreDataProperties.swift
//  DemoDay1
//
//  Created by octavianus on 06/04/21.
//
//

import Foundation
import CoreData


extension Trainer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Trainer> {
        return NSFetchRequest<Trainer>(entityName: "Trainer")
    }

    @NSManaged public var name: String?
    @NSManaged public var address: String?

}

extension Trainer : Identifiable {

}
