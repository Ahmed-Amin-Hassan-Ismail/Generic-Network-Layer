//
//  UsersVC+TableView.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation
import UIKit

extension UsersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "UsersViewCell", bundle: nil), forCellReuseIdentifier: "UsersViewCell")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.uesrsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsersViewCell", for: indexPath) as! UsersViewCell
        presenter.configureUsersCell(for: cell, in: indexPath.row)
        return cell
    }
    
    
}
