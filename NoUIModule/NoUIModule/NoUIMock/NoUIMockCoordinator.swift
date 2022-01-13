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
    final public class Coordinator<T:BaseViewController>: CoordinatorProtocol { 
        
        var scene: SceneNoUI<ViewModel>? = nil
        
        public func start() {
            guard let scene = NoUIMock.makeScene(coordinator: self) else { return }
            self.scene = scene
            // Push view controller in container
        }

        public func setViewController(viewController: T) {
            scene?.viewController = viewController
            scene?.viewModel = viewController
        }

        // Declare public methods that return variables to be observed (from view model mainly)
    }
}
