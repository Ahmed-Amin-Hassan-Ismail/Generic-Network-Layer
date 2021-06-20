//
//  UsersViewController.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import UIKit
import KRActivityIndicatorView

class UsersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let activityIndicator = KRActivityIndicatorView()
    var presenter: UsersPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup table view
        setupTableView()
        
        // instance of presenter
        presenter = UsersPresenter(view: self)
        presenter.viewDidLoad()
        
    }
    
}
