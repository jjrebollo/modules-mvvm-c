//
//  MainCoordinator.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 16/12/2021.
//

import Foundation
import UIKit
import Combine

class RootCoordinator: CoordinatorProtocol {

    var childCoordinators = [CoordinatorProtocol]()    
    var navigationController: UINavigationController
    
    var scene: RootScene? = nil
    
    let moduleWithUIButtonSubject = PassthroughSubject<Void, Never>()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let scene = RootScene.makeScene(coordinator: self)
        self.scene = scene
        navigationController.pushViewController(scene.viewController, animated: true)
    }

}
