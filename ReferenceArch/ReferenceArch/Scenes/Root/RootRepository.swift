//
//  RootRepository.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation

class RootRepository: CollaboratorProtocol {
    var service: RootService
    
    init(service: RootService) {
        self.service = service
    }
}
