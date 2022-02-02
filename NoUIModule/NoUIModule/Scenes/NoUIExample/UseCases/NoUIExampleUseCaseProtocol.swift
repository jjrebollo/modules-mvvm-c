//
//  UIExampleUseCaseProtocol.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 20/01/2022.
//

import Combine

protocol CompanyUseCaseProtocol: AnyObject {
    func getCompanyName()
    func getCompanyNameSubject() -> PassthroughSubject<String?, Never>
}
