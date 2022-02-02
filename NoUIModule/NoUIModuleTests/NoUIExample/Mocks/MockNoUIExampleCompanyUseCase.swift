//
//  MockNoUIExampleUseCase1.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 02/02/2022.
//

import Foundation
import Combine
@testable import NoUIModule

final class MockNoUIExampleCompanyUseCase: CompanyUseCaseProtocol {
    
    var spyGetCompanyNameCalled = false
    func getCompanyName() {
        spyGetCompanyNameCalled = true
    }
    
    var spyGetCompanyNameSubjectCalled = false
    let spyCompanyNameSubject = PassthroughSubject<String?, Never>()
    func getCompanyNameSubject() -> PassthroughSubject<String?, Never> {
        spyGetCompanyNameSubjectCalled = true
        
        return spyCompanyNameSubject
    }
}
