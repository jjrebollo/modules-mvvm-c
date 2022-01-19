//
//  UIExampleCollaborator.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import BaseModule
import Combine

protocol UIExampleRepositoryProtocol: CollaboratorProtocol {
    var bankSubject: PassthroughSubject<Bank?, Never> { get }
    func getBankName() -> AnyPublisher<String?, Error>
}

extension UIExample {
    final class Repository: UIExampleRepositoryProtocol {
        
        var service: Service
        
        let bankSubject = PassthroughSubject<Bank?, Never>()
        private var cancellableBag = Set<AnyCancellable>()
        
        init(service: Service) {
            self.service = service
        }
        
        func getBankName() -> AnyPublisher<String?, Error> {
            return service.retrieveBankInfo()
                .handleEvents(receiveOutput: { [weak self] bank in
                    self?.bankSubject.send(bank)
                })
                .map({ bank in
                    bank?.name
                })
                .eraseToAnyPublisher()
        }
    }
}
