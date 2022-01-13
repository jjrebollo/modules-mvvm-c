//
//  NoUIMockUseCase.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import BaseModule

extension NoUIMock {

    // UseCase1 class name should be renamed to a proper name
    final class UseCase1 {
        let collaborator: CollaboratorProtocol // Can be renamed to `repository``
        
        init(collaborator: CollaboratorProtocol) {
            self.collaborator = collaborator
        }
    }
}
