//
//  BaseResponse.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation


class BaseResponse<T: Codable>: Codable {
    
    var totalPage: Int?
    var data: T?
    
    enum CodingKeys: String, CodingKey {
        case totalPage = "total_pages"
        case data = "data"
    }
}
