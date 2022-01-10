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

    // Coordinators declaration
    var navigationController: BaseNavigationController
    
    var scene: RootScene? = nil
    
    let moduleWithUIButtonSubject = PassthroughSubject<Void, Never>()
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
        
        configureObservables()
    }
    
    func start() {
        guard let scene = RootScene.makeScene(coordinator: self) else { return }
        self.scene = scene
        navigationController.pushViewController(scene.viewController, animated: true)
    }

    func configureObservables() {
        // observe moduleWithUIButtonSubject and create the new coordinator + start it
    }
}
