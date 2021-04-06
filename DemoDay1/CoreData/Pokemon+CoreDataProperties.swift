//
//  Pokemon+CoreDataProperties.swift
//  DemoDay1
//
//  Created by octavianus on 06/04/21.
//
//

import Foundation
import CoreData


extension Pokemon {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pokemon> {
        return NSFetchRequest<Pokemon>(entityName: "Pokemon")
    }

    @NSManaged public var name: String?
    @NSManaged public var type: Int64

}

extension Pokemon : Identifiable {

}
