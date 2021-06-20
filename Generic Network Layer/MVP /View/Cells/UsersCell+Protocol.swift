//
//  UsersCell+Protocol.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

extension UsersViewCell: UsersCell {
    
    func displayID(id: String) {
        idLabel.text = id
    }
    
    func displayFirstName(firstName: String) {
        firstNameLabel.text = firstName
    }
    
    func displaySecondName(secondName: String) {
        secondNameLabel.text = secondName
    }
    
    func displayEmail(email: String) {
        emailLabel.text = email
    }
    
    
}
