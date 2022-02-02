//
//  NoUIExampleCollaboratorTests.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 02/02/2022.
//

import XCTest
import Combine
@testable import NoUIModule


class NoUIExampleCollaboratorTests: XCTestCase {
    
    private var mockService: MockNoUIExampleService!
    private var repository: NoUIExample.Repository!
    
    private var cancellableBag = Set<AnyCancellable>()

    override func setUp() {

        super.setUp()

        mockService = MockNoUIExampleService()
        
        repository = NoUIExample.Repository(service: mockService)
    }

    override func tearDown() {
        super.tearDown()
        mockService = nil
        repository = nil
    }

    func testMethodName() {
        // Test implementation
    }

}
