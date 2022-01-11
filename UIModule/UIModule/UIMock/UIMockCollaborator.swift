//
//  UIMockCollaborator.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import BaseModule

extension UIMock {
    final class Repository: CollaboratorProtocol {
        var service: Service
        
        init(service: Service) {
            self.service = service
        }
    }
}
