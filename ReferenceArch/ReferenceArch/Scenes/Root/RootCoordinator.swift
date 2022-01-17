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
import NoUIModule

extension Root {
    final class Coordinator: BaseNavigationCoordinator<BaseNavigationController> {

        var uiExampleCoordinator: UIExample.Coordinator
        var noUiExampleCoordinator: NoUIExample.Coordinator
        
        var scene: Scene<RootViewController, ViewModel>? = nil
        
        let launchUISceneSubject = PassthroughSubject<Void, Never>()
        let launchNoUISceneSubject = PassthroughSubject<Void, Never>()
        private var cancellables = Set<AnyCancellable>()
        
        override init(navigationController: BaseNavigationController) {
            self.uiExampleCoordinator = UIExample.Coordinator(navigationController: navigationController)
            self.noUiExampleCoordinator = NoUIExample.Coordinator(navigationController: navigationController)
            
            super.init(navigationController: navigationController)
            
            configureObservables()
        }
        
        override func start() {
            guard let scene = Root.makeScene(coordinator: self) else { return }
            self.scene = scene
            navigationController.pushViewController(scene.viewController, animated: true)
        }

        func configureObservables() {
            self.launchUISceneSubject
                .sink { [weak self] _ in
                    self?.launchModuleWithUI()
                }
                .store(in: &cancellables)
            
            self.launchNoUISceneSubject
                .sink { [weak self] _ in
                    self?.launchModuleWithNoUI()
                }
                .store(in: &cancellables)
        }
        
        private func launchModuleWithUI() {
            self.uiExampleCoordinator.start()
        }
        
        private func launchModuleWithNoUI() {
            let nibName = NoUIExampleViewController.Constants.Nib
            let viewController = NoUIExampleViewController.instantiate(nibName: nibName)
            viewController.setNoUiExampleCoordinator(coordinator: noUiExampleCoordinator)
            self.noUiExampleCoordinator.setViewController(viewController: viewController)
            self.noUiExampleCoordinator.start()
        }
    }
}
