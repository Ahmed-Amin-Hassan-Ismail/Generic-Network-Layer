//
//  UsersViewCell.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import UIKit

class UsersViewCell: UITableViewCell {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .none
    }
    
}
