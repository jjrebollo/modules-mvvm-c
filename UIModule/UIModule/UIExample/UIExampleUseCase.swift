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

    // UseCase1 class name should be renamed to a proper name
    final class BankUseCase {
        let repository: Repository
        
        init(repository: Repository) {
            self.repository = repository
        }
        
        func getBankName() -> AnyPublisher<String?, Error> {
            return repository.getBankName()
        }
    }
}