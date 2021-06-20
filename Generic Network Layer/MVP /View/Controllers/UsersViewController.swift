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
    
    // Show Alert
    func showAlert() {
        let errorAlert = UIAlertController(title: "Internet Connect Error", message: "something went wrong please try again later.", preferredStyle: .alert)
        let errorAction = UIAlertAction(title: "Ok", style: .default) { (_) in
            self.dismiss(animated: true, completion: nil)
        }
        errorAlert.addAction(errorAction)
        present(errorAlert, animated: true, completion: nil)
    }
    
    
}
