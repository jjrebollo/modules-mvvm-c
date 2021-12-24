//
//  BaseViewModel.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation

class BaseViewModel<T:CoordinatorProtocol> {
    let coordinator: T
    
    init(coordinator: T) {
        self.coordinator = coordinator
        
        setupCoordinatorObservers(for: coordinator)
    }
    
    func setupCoordinatorObservers(for: T) {}
}
