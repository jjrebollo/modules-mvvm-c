//
//  UIMockCoordinator.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import BaseModule
import UIKit

extension UIExample {
    final public class Coordinator: CoordinatorProtocol {
        
        var scene: Scene<UIExampleViewController, ViewModel>? = nil
        var navigationController: BaseNavigationController
        
        public init(navigationController: BaseNavigationController) {
            self.navigationController = navigationController
            self.scene = UIExample.makeScene(coordinator: self)
        }
        
        public func start() {
            guard let scene = self.scene else { return }
            
            navigationController.pushViewController(scene.viewController, animated: true)
        }
    }
}
