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

    final class CompanyNameUseCase {
        let repository: NoUIExampleRepositoryProtocol
        
        init(collaborator: NoUIExampleRepositoryProtocol) {
            self.repository = collaborator
        }
        
        func getCompanyNameSubject() -> PassthroughSubject<String?, Never> {
            return repository.companyNameSubject
        }
        
        func getCompanyName() {
            repository.getCompanyName()
        }
    }
}
