//
//  RootViewModel.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation
import Combine
import BaseModule

class RootViewModel: BaseViewModel {
    let rootUseCase: RootUseCase
    
    let moduleWithUIButtonSubject = PassthroughSubject<Void, Never>()
    let moduleWithoutUIButtonSubject = PassthroughSubject<Void, Never>()
    private var cancellableBag = Set<AnyCancellable>()

    
    weak var viewController: RootViewController? {
        didSet {
            guard let viewController = viewController else { return }
            setupViewControllerObservers(for: viewController)
        }
    }
    
    init(coordinator: RootCoordinator, rootUseCase: RootUseCase) {
        self.rootUseCase = rootUseCase
        
        super.init(coordinator: coordinator)
    }
    
    func setupCoordinatorObservers(for coordinator: RootCoordinator) {
        moduleWithUIButtonSubject
            .bind(to: coordinator.moduleWithUIButtonSubject)
            .store(in: &cancellableBag)
    }
    
    func setupViewControllerObservers(for: RootViewController) {
        // necessary??
    }
    
}

// viewmodel should observe viewcontroller events
// add extension from here https://betterprogramming.pub/observe-uibutton-events-using-combine-in-swift-5-63c1a4e0a0c1
