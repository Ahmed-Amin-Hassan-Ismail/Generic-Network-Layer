//
//  UsersNetworking.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation
import Alamofire

enum UsersNetworking {
    case usersGet
    case createUser(firstName: String, secondName: String)
}

extension UsersNetworking: Target {
    
    var baseURL: String {
        switch self {
        default:
            return "https://reqres.in/api"
        }
    }
    
    var pathURL: String {
        switch self {
        default:
            return "/users"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .usersGet:
            return .get
        case .createUser:
            return .post
        }
    }
    
    var task: Task {
        switch self {
        case .usersGet:
            return .requestPlain
        case .createUser(let firstName, let secondName):
            return .requestParameter(parameter: ["First Name":firstName, "Second Name": secondName], encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [:]
        }
    }
    
    
}
