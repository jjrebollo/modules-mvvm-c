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
    var companySubject: PassthroughSubject<Company?, Never> { get }
    func getCompanyName() -> AnyPublisher<String?, Error>
}

extension UIExample {
    final class Repository: UIExampleRepositoryProtocol {
        
        var service: Service
        
        let companySubject = PassthroughSubject<Company?, Never>()
        private var cancellableBag = Set<AnyCancellable>()
        
        init(service: Service) {
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
