//
//  MainCoordinator.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 16/12/2021.
//

import BaseModule
import UIKit
import Combine
import UIModule

extension Root {
    final class Coordinator: CoordinatorProtocol {

        // Coordinators declaration
//        var uiMockCoordinator: UIMock
        
        var navigationController: BaseNavigationController
        
        var scene: Scene<RootViewController>? = nil
        
        let moduleWithUIButtonSubject = PassthroughSubject<Void, Never>()
        
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
            // observe moduleWithUIButtonSubject and create the new coordinator + start it
            
//            let coordinator = UIMock.Coordinator(navigationController: navigationController)
//            self.coordinator = coordinator
//            self.coordinator?.start()
            
            
        }
    }
}
