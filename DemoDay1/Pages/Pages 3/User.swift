//
//  User.swift
//  DemoDay1
//
//  Created by octavianus on 06/04/21.
//

import Foundation




//Access modifier

struct User{
    var name: String
    var address: String
    var isActive: Bool
    
    
    static func generateDummyData() -> [User] {
        return [
            User(name: "Octa", address:"Jakaarta", isActive: true),
            User(name: "Handy", address:"Jatinegara", isActive: true),
            User(name: "Zein", address:"Tangerang", isActive: false),
            User(name: "Toya", address:"Solo", isActive: true),
            User(name: "Viona", address:"Jakaarta", isActive: false)
        ]
    }
}


//class MyButton{
//    //Properties
//    var name: String
//    var address: String
//    var isActive: Bool
//
//    //Initializer method
//    init(name: String,address: String,isActive: Bool) {
//
//        self.name = name
//        self.address = address
//        self.isActive = isActive
//    }
//}



