//
//  UsersPresenter.swift
//  Generic Network Layer
//
//  Created by Amin  on 6/20/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

protocol UsersView: class {
    func showIndicator()
    func hideIndicator()
    func fetchUserData()
    func ErrorUserData(error: String)
}

protocol UsersCell {
    func displayID(id: String)
    func displayFirstName(firstName: String)
    func displaySecondName(secondName: String)
    func displayEmail(email: String)
}

class UsersPresenter {
    
    private let userInteractor = UsersInteractor()
    private weak var view: UsersView?
    var users = [UsersModel]()
    
    init(view: UsersView) {
        self.view = view
    }
    
    func viewDidLoad() {
        getDataUsers()
    }
    
    private func getDataUsers() {
        // Show indicator
        view?.showIndicator()
        userInteractor.getUsers { [weak self] (result) in
            guard let self = self else { return }
            // Hide Indicator
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.view?.hideIndicator()
                switch result {
                case .success(let response):
                    guard let response = response else { return }
                    guard let data = response.data else { return }
                    self.users = data
                    self.view?.fetchUserData()
                case .failure(let error):
                    self.view?.ErrorUserData(error: error.localizedDescription)
                }
            }
        }
    }
    
    func uesrsCount() -> Int {
        return users.count
    }
    
    func configureUsersCell(for cell: UsersCell, in index: Int) {
        let user = users[index]
        cell.displayID(id: "\(user.id!)")
        cell.displayFirstName(firstName: user.firstName!)
        cell.displaySecondName(secondName: user.secondName!)
        cell.displayEmail(email: user.email!)
    }
    
}
