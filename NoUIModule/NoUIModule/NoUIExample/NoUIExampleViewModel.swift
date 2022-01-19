//
//  NoUIExampleViewModel.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import Combine
import BaseModule

extension NoUIExample {
    final public class ViewModel: BaseViewModel {
        let bankUseCase: BankNameUseCase
        
        init(coordinator: Coordinator, bankUseCase: BankNameUseCase) {
            self.bankUseCase = bankUseCase

            super.init(coordinator: coordinator)

            self.setupCoordinatorObservers(for: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
        func getBankName() {
            self.bankUseCase.getBankName()
        }
        
        func bankNameSubject() -> PassthroughSubject<String?, Never> {
            return bankUseCase.getBankNameSubject()
        }
        
    }
}
