//
//  MockUIExampleRepository.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 26/01/2022.
//

import Foundation
import Combine
@testable import UIModule

final class MockUIExampleRepository: UIExampleRepositoryProtocol {
    
    var spyCompanyName = ""
    var spyGetCompanyNameCalled = false
    
    func getCompanyName() -> AnyPublisher<String?, Error> {
        spyGetCompanyNameCalled = true
        
        return Future { promise in
            promise(.success(self.spyCompanyName))
        }.eraseToAnyPublisher()
    }
    
    
}
