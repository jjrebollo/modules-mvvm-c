//
//  MainCoordinator.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 16/12/2021.
//

import Foundation
import UIKit

class RootCoordinator: CoordonatorProtocol {

    var childCoordinators = [CoordonatorProtocol]()    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = RootViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }

}
