//
//  NoUIExampleUseCase1Tests.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 02/02/2022.
//

import XCTest
import Combine
@testable import NoUIModule

class NoUIExampleUseCase1Tests: XCTestCase {
    
    private var mockRepository: MockNoUIExampleRepository!
    private var companyUseCase: NoUIExample.CompanyUseCase!
    
    private var cancellableBag = Set<AnyCancellable>()

    override func setUp() {

        super.setUp()

        mockRepository = MockNoUIExampleRepository()
        
        companyUseCase = NoUIExample.CompanyUseCase(repository: mockRepository)
    }

    override func tearDown() {
        super.tearDown()
        mockRepository = nil
        companyUseCase = nil
    }

    func testMethodName() {
        // Test implementation
    }

}
