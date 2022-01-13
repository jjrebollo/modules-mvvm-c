//
//  RootViewModel.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation
import Combine
import BaseModule

extension Root {
    final class ViewModel: BaseViewModel {
        let rootUseCase: UseCase1
        
        let moduleWithUIButtonSubject = PassthroughSubject<Void, Never>()
        let moduleWithoutUIButtonSubject = PassthroughSubject<Void, Never>()
        private var cancellableBag = Set<AnyCancellable>()
        
        weak var viewController: RootViewController? {
            didSet {
                guard let viewController = viewController else { return }
                setupViewControllerObservers(for: viewController)
            }
        }
        
        init(coordinator: Coordinator, rootUseCase: UseCase1) {
            self.rootUseCase = rootUseCase
            
            super.init(coordinator: coordinator)
            
            self.setupCoordinatorObservers(for: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            moduleWithUIButtonSubject
                .bind(to: coordinator.launchUISceneSubject)
                .store(in: &cancellableBag)
            
            moduleWithoutUIButtonSubject
                .bind(to: coordinator.launchNoUISceneSubject)
                .store(in: &cancellableBag)
        }

        private func setupViewControllerObservers(for viewController: RootViewController) {
            viewController.moduleWithUIButtonTouchedSubject
                .bind(to: self.moduleWithUIButtonSubject)
                .store(in: &cancellableBag)
            
            viewController.moduleWithNoUIButtonTouchedSubject
                .bind(to: self.moduleWithoutUIButtonSubject)
                .store(in: &cancellableBag)
        }
    }

    // viewmodel should observe viewcontroller events
    // add extension from here https://betterprogramming.pub/observe-uibutton-events-using-combine-in-swift-5-63c1a4e0a0c1
}
