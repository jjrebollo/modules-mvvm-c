//
//  UIExampleUseCase.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import BaseModule
import Combine

extension UIExample {

    final class CompanyUseCase: CompanyUseCaseProtocol {
        let repository: UIExampleRepositoryProtocol
        
        init(repository: UIExampleRepositoryProtocol) {
            self.repository = repository
        }
        
        func getCompanyName() -> AnyPublisher<String?, Error> {
            return repository.getCompanyName()
        }
    }
}
