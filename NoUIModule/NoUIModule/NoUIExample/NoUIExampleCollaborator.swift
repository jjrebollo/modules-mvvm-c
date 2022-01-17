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
    var bankNameSubject: PassthroughSubject<String?, Never> { get }
    func getBankName()
}

extension NoUIExample {
    final class Repository: NoUIExampleRepositoryProtocol {
        
        var service: Service
        
        let bankNameSubject = PassthroughSubject<String?, Never>()
        private var cancellableBag = Set<AnyCancellable>()
        
        init(service: Service) {
            self.service = service
        }
        
        func getBankName() {
            service.retrieveBankInfo()
                .sink (
                    receiveCompletion: { _ in },
                    receiveValue: { [weak self] bank in
                        self?.bankNameSubject.send(bank?.name)
                    }
                )
                .store(in:&cancellableBag)

        }
    }
}
