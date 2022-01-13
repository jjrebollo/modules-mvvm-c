//
//  NoUIMockCollaborator.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import BaseModule

extension NoUIMock {
    final class Collaborator: CollaboratorProtocol {
        var service: Service
        
        init(service: Service) {
            self.service = service
        }
    }
}
