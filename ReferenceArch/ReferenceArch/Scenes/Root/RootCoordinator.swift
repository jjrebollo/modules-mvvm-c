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

        var uiMockCoordinator: UIMock.Coordinator
        var noUiMockCoordinator: NoUIMock.Coordinator
        
        var scene: Scene<RootViewController, ViewModel>? = nil
        
        let launchUISceneSubject = PassthroughSubject<Void, Never>()
        let launchNoUISceneSubject = PassthroughSubject<Void, Never>()
        private var cancellables = Set<AnyCancellable>()
        
        override init(navigationController: BaseNavigationController) {
            self.uiMockCoordinator = UIMock.Coordinator(navigationController: navigationController)
            self.noUiMockCoordinator = NoUIMock.Coordinator(navigationController: navigationController)
            
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
            self.uiMockCoordinator.start()
        }
        
        private func launchModuleWithNoUI() {
            let nibName = NoUIViewController.Constants.Nib
            let viewController = NoUIViewController.instantiate(nibName: nibName)
            self.noUiMockCoordinator.setViewController(viewController: viewController)
            self.noUiMockCoordinator.start()
        }
    }
}
