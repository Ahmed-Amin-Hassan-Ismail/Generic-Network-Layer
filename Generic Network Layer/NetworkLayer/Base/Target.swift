//
//  Target.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation
import Alamofire


protocol Target {
    
    var baseURL: String { get }
    
    var pathURL: String { get }
    
    var method:HTTPMethod { get }
    
    var task: Task { get }
    
    var headers: [String: String]? { get }
}

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

enum Task {
    
    case requestPlain
    
    case requestParameter(parameter: [String: Any], encoding: ParameterEncoding )
}
