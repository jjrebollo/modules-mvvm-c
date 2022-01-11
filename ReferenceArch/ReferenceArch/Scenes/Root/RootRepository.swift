//
//  RootRepository.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation
import BaseModule

extension Root {
    final class Repository: CollaboratorProtocol {
        var service: Service
        
        init(service: Service) {
            self.service = service
        }
    }
}
