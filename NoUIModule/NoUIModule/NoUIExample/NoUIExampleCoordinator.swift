//
//  NoUIExampleCoordinator.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import BaseModule
import UIKit
import Combine

extension NoUIExample {

    // Instead of `CoordinatorProtocol`, this class can inherit from one of the specific base coordinator such as `BaseNavigationCoordinator`
    final public class Coordinator: CoordinatorProtocol {
        
        @Published public var companyName: String
        
        var scene: SceneNoUI<ViewModel>? = nil
        var navigationController: BaseNavigationController
        
        private var cancellableBag = Set<AnyCancellable>()
        
        public init(navigationController: BaseNavigationController) {
            self.navigationController = navigationController
            self.companyName = "No Company Name"
            self.scene = NoUIExample.makeScene(coordinator: self)
            bind()
        }
        
        public func start() {
            guard let scene = self.scene, let viewController = scene.viewController else { return }
            
            navigationController.pushViewController(viewController, animated: true)
        }

        public func setViewController(viewController: BaseViewController) {
            scene?.viewController = viewController
        }

        // Declare public methods that return variables to be observed (from view model mainly)
        public func getCompanyName() {
            scene?.viewModel.getCompanyName()
        }

    }
}

private extension NoUIExample.Coordinator {
    
    func bind() {
        scene?.viewModel.companyNameSubject()
            .sink(receiveValue: { [weak self] newBankName in
                guard let newBankName = newBankName else { return }
                
                self?.companyName = newBankName
            })
            .store(in: &cancellableBag)
    }
    
}
