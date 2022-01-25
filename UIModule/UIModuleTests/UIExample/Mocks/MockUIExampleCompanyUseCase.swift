//
//  MockUIExampleCompanyUseCase.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 20/01/2022.
//

import Combine
@testable import UIModule

final class MockUIExampleCompanyUseCase: CompanyUseCaseProtocol {
    
    let getCompanyNameSubject = PassthroughSubject<String?, Error>()
    var spyCompanyName = ""
    var spyGetCompanyNameCalled = false
    func getCompanyName() -> AnyPublisher<String?, Error> {
        spyGetCompanyNameCalled = true

        return Future { promise in
            promise(.success(self.spyCompanyName))
        }.eraseToAnyPublisher()
    }
}
