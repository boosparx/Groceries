//
//  GroceryItem .swift
//  Groceries
//
//  Created by Tony Caio on 3/16/17.
//  Copyright © 2017 Sparx Worx. All rights reserved.
//

import Foundation

class Agent
{
    var name: String
    var coverName: String
    var accessLevel: Int
    
    init(name: String, coverName: String, accessLevel: Int)
    {
        self.name = name
        self.coverName = coverName
        self.accessLevel = accessLevel
    }
}
