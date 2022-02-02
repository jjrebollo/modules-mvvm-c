//
//  UIExampleCollaborator.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import BaseModule
import Combine

extension NoUIExample {
    final class Repository: NoUIExampleRepositoryProtocol {
        
        var service: NoUIExampleServiceProtocol
        
        let companyNameSubject = PassthroughSubject<String?, Never>()
        private var cancellableBag = Set<AnyCancellable>()
        
        init(service: NoUIExampleServiceProtocol) {
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
