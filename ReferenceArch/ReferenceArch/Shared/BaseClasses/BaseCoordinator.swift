//
//  BaseCoordinator.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 10/01/2022.
//

import Foundation

class BaseCoordinator<T:BaseNavigationController>: CoordinatorProtocol {
    
    var navigationController: T
    
    init(navigationController: T) {
        self.navigationController = navigationController
    }
    
    func start() {}

}
