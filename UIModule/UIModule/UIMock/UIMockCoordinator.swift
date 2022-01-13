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
            self.scene = UIMock.makeScene(coordinator: self)
        }
        
        public func start() {
            guard let scene = self.scene else { return }
            
            navigationController.pushViewController(scene.viewController, animated: true)
        }
    }
}
