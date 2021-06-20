//
//  UsersInteractor.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation


class UsersInteractor: BaseAPI<UsersNetworking> {
    
    func getUsers(completion: @escaping (Result<BaseResponse<[UsersModel]>?, NSError>) -> Void) {
        
        self.userData(target: .usersGet, responseClass: BaseResponse<[UsersModel]>.self) { (result) in
            completion(result)
        }
    }
}
