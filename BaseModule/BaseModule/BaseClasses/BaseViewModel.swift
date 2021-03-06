//
//  BaseViewModel.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation

open class BaseViewModel {
    let coordinator: CoordinatorProtocol
    
    public init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
    }
}
