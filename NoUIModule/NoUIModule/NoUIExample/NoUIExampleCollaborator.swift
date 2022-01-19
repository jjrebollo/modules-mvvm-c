//
//  NoUIExampleCollaborator.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import BaseModule
import Combine

protocol NoUIExampleRepositoryProtocol: CollaboratorProtocol {
    var companyNameSubject: PassthroughSubject<String?, Never> { get }
    func getCompanyName()
}

extension NoUIExample {
    final class Repository: NoUIExampleRepositoryProtocol {
        
        var service: Service
        
        let companyNameSubject = PassthroughSubject<String?, Never>()
        private var cancellableBag = Set<AnyCancellable>()
        
        init(service: Service) {
            self.service = service
        }
        
        func getCompanyName() {
            service.retrieveCompanyInfo()
                .sink (
                    receiveCompletion: { _ in },
                    receiveValue: { [weak self] bank in
                        self?.companyNameSubject.send(bank?.name)
                    }
                )
                .store(in:&cancellableBag)

        }
    }
}
