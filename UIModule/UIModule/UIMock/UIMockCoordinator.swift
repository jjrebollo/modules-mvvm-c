//
//  UIMockCoordinator.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import BaseModule
import UIKit

extension UIMock {
    final class Coordinator: CoordinatorProtocol {
        
        var scene: Scene<UIMockViewController>? = nil
        
        var navigationController: BaseNavigationController
        
        init(navigationController: BaseNavigationController) {
            self.navigationController = navigationController
            
            configureObservables()
        }

        
        func start() {
            guard let scene = Root.makeScene(coordinator: self) else { return }
            self.scene = scene
            navigationController.pushViewController(scene.viewController, animated: true)
        }

        func configureObservables() {
            // 
        }
    }
}
