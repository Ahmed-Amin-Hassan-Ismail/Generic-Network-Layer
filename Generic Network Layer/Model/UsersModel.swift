//
//  UsersModel.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

class UsersModel: Codable {
    
    var id: Int?
    var firstName: String?
    var secondName: String?
    var email: String?
    
    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        case firstName = "first_name"
        case secondName = "last_name"
        case email = "email"
        
    }
}
