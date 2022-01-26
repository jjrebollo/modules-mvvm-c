//
//  MockUIExampleService.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 26/01/2022.
//

import Foundation
import Combine
@testable import UIModule

final class MockUIExampleService: UIExampleServiceProtocol {
    
    var spyRetrieveCompanyInfo: Company!
    var spyRetrieveCompanyInfoCalled = false
    func retrieveCompanyInfo() -> Future<Company?, Error> {
        spyRetrieveCompanyInfoCalled = true
        
        return Future<Company?, Error> { promise in
            promise(.success(self.spyRetrieveCompanyInfo))
        }
    }
    
}
