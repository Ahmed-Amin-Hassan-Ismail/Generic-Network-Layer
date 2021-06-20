//
//  BaseAPI.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation
import Alamofire


class BaseAPI<T: Target> {
    
    func userData<M: Codable>(target: T, responseClass: M.Type, completion: @escaping (Result<M?, NSError>) -> Void ) {
        
        let method = Alamofire.HTTPMethod(rawValue: target.method.rawValue)
        let headers = Alamofire.HTTPHeaders(target.headers ?? [:])
        let params = parametersBuilding(prameter: target.task)
        
        // Make a network request
        AF.request(target.baseURL + target.pathURL,
                   method: method,
                   parameters: params.0,
                   encoding: params.1,
                   headers: headers).responseJSON { (response) in
                    // check if status code 200
                    guard let statusCode = response.response?.statusCode else {
                        // Add Custome Error
                        return
                    }
                    if statusCode == 200 {
                        // Check response
                        guard let jsonResponse = try? response.result.get() else {
                             // Add custome Error
                            return
                        }
                        // Check Data
                        guard let jsonData = try? JSONSerialization.data(withJSONObject: jsonResponse, options: []) else {
                             // Add custome Error
                            return
                        }
                        // Check Decode
                        guard let jsonObject = try? JSONDecoder().decode(responseClass, from: jsonData) else {
                             // Add custome Error
                            return
                        }
                        // Sucessful calling
                        completion(.success(jsonObject))
                    } else {
                        // Add custome Error
                        completion(.failure(NSError()))
                    }
        }
    }
    
    private func parametersBuilding(prameter: Task) -> ([String: Any]?, ParameterEncoding) {
        switch prameter {
        case .requestPlain:
            return (nil, URLEncoding.default)
        case .requestParameter(let parameter, let encoding):
            return (parameter, encoding)
        }
    }
}
