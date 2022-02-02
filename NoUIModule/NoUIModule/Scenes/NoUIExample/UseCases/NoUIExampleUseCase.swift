//
//  UIExampleUseCase.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import BaseModule
import Combine

extension NoUIExample {

    final class CompanyUseCase: CompanyUseCaseProtocol {
        let repository: NoUIExampleRepositoryProtocol
        
        init(repository: NoUIExampleRepositoryProtocol) {
            self.repository = repository
        }
        
        func getCompanyNameSubject() -> PassthroughSubject<String?, Never> {
            return repository.companyNameSubject
        }
        
        func getCompanyName() {
            repository.getCompanyName()
        }
    }
}
