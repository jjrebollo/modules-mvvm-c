//
//  UIExampleRepositoryProtocol.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 20/01/2022.
//

import Combine
import BaseModule

protocol UIExampleRepositoryProtocol: CollaboratorProtocol, AnyObject {
    func getCompanyName() -> AnyPublisher<String?, Error>
}
