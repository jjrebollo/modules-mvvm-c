//
//  RootUseCase.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation

class RootUseCase {
    let reposiroty: CollaboratorProtocol
    
    init(collaborator: CollaboratorProtocol) {
        self.reposiroty = collaborator
    }
}
