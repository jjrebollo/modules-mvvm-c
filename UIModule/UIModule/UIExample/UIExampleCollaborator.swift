//
//  UIExampleCollaborator.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import BaseModule
import Combine

extension UIExample {
    final class Repository: UIExampleRepositoryProtocol {
        
        var service: UIExampleServiceProtocol
        
        let companySubject = PassthroughSubject<Company?, Never>()
        private var cancellableBag = Set<AnyCancellable>()
        
        init(service: UIExampleServiceProtocol) {
            self.service = service
        }
        
        func getCompanyName() -> AnyPublisher<String?, Error> {
            return service.retrieveCompanyInfo()
                .handleEvents(receiveOutput: { [weak self] bank in
                    self?.companySubject.send(bank)
                })
                .map({ bank in
                    bank?.name
                })
                .eraseToAnyPublisher()
        }
    }
}
