//
//  MockNoUIExampleService.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 02/02/2022.
//

import Foundation
import Combine
@testable import NoUIModule

final class MockNoUIExampleService: NoUIExampleServiceProtocol {
    
    var spyRetrieveCompanyInfo: Company!
    var spyRetrieveCompanyInfoCalled = false
    func retrieveCompanyInfo() -> Future<Company?, Error> {
        spyRetrieveCompanyInfoCalled = true
        
        return Future<Company?, Error> { promise in
            promise(.success(self.spyRetrieveCompanyInfo))
        }
    }
}
