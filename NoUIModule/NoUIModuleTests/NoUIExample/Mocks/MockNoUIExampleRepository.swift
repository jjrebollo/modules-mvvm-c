//
//  MockNoUIExampleCollaborator.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 02/02/2022.
//

import Foundation
import Combine
@testable import NoUIModule

final class MockNoUIExampleRepository: NoUIExampleRepositoryProtocol {
    var companyNameSubject = PassthroughSubject<String?, Never>()
    
    var spyGetCompanyNameCalled = false
    func getCompanyName() {
        spyGetCompanyNameCalled = true
    }
}
