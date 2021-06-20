//
//  UsersVC+Protocol.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation
import KRActivityIndicatorView

extension UsersViewController: UsersView {
    
    func showIndicator() {
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
    }
    
    func hideIndicator() {
        activityIndicator.stopAnimating()
        activityIndicator.hidesWhenStopped = true
    }
    
    func fetchUserData() {
        tableView.reloadData()
    }
    
    func ErrorUserData(error: String) {
        print(error)
    }
    
    
}
