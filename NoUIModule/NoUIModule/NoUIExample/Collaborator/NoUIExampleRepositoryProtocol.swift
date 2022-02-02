//
//  UIExampleRepositoryProtocol.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 20/01/2022.
//

import Combine
import BaseModule

protocol NoUIExampleRepositoryProtocol: CollaboratorProtocol {
    var companyNameSubject: PassthroughSubject<String?, Never> { get }
    func getCompanyName()
}
