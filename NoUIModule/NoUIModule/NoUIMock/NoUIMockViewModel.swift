//
//  NoUIMockViewModel.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import Combine
import BaseModule

extension NoUIMock {
    final public class ViewModel: BaseViewModel {
        let useCase1: UseCase1
        
        private var cancellableBag = Set<AnyCancellable>()
        
        init(coordinator: Coordinator, useCase1: UseCase1) {
            self.useCase1 = useCase1

            super.init(coordinator: coordinator)

            self.setupCoordinatorObservers(for: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
    }
}
