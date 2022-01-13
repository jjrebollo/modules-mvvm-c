//
//  NoUIMockCoordinator.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import BaseModule
import UIKit

extension NoUIMock {

    // Instead of `CoordinatorProtocol`, this class can inherit from one of the specific base coordinator such as `BaseNavigationCoordinator`
    final public class Coordinator: CoordinatorProtocol {
        
        var scene: SceneNoUI<ViewModel>? = nil
        var navigationController: BaseNavigationController
        
        public init(navigationController: BaseNavigationController) {
            self.navigationController = navigationController
            self.scene = NoUIMock.makeScene(coordinator: self)
        }
        
        public func start() {
            guard let scene = self.scene, let viewController = scene.viewController else { return }
            
            navigationController.pushViewController(viewController, animated: true)
        }

        public func setViewController(viewController: BaseViewController) {
            scene?.viewController = viewController
        }

        // Declare public methods that return variables to be observed (from view model mainly)
    }
}
