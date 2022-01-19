//
//  NoUIExampleUseCase.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import BaseModule
import Combine

extension NoUIExample {

    final class BankNameUseCase {
        let repository: NoUIExampleRepositoryProtocol
        
        init(collaborator: NoUIExampleRepositoryProtocol) {
            self.repository = collaborator
        }
        
        func getBankNameSubject() -> PassthroughSubject<String?, Never> {
            return repository.bankNameSubject
        }
        
        func getBankName() {
            repository.getBankName()
        }
    }
}
