//
//  UIMockCollaborator.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import BaseModule

extension UIExample {
    final class Collaborator: CollaboratorProtocol {
        var service: Service
        
        init(service: Service) {
            self.service = service
        }
    }
}
