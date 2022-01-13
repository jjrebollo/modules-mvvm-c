//
//  UIMockCoordinator.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import BaseModule
import UIKit

extension UIMock {
    final public class Coordinator: CoordinatorProtocol {
        
        var scene: Scene<UIMockViewController, ViewModel>? = nil
        
        var navigationController: BaseNavigationController
        
        public init(navigationController: BaseNavigationController) {
            self.navigationController = navigationController
        }

        
        public func start() {
            guard let scene = UIMock.makeScene(coordinator: self) else { return }
            self.scene = scene
            navigationController.pushViewController(scene.viewController, animated: true)
        }
    }
}
