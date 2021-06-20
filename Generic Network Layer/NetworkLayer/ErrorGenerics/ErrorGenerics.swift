//
//  ErrorGenerics.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

enum ErrorGenerics: String {
    
    case responseFailure = "something went wrong while getting response"
    case dataFailure = "something went wrong while getting data"
    case decodeFailure = "something went wrong while decoding json data"
    case statusCodeFailure = "Status Code Failure, please check you backend developers"

}
