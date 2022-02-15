//
//  NoUIExampleFunctionalTests.swift
//  NoUIModuleTests
//
//  Created by Juan Jose Rebollo on 15/02/2022.
//

import XCTest
import Combine
@testable import NoUIModule

class NoUIExampleFunctionalTests: XCTestCase {
    
    private var viewModel: NoUIExample.ViewModel!
    private var companyUseCase: NoUIExample.CompanyUseCase!
    private var repository: NoUIExample.Repository!
    
    private var mockService: MockNoUIExampleService!
    private var mockCoordinator: MockNoUIExampleCoordinator!

    override func setUp() {

        super.setUp()

        mockCoordinator = MockNoUIExampleCoordinator()
        mockService = MockNoUIExampleService()
        
        repository = NoUIExample.Repository(service: mockService)
        companyUseCase = NoUIExample.CompanyUseCase(repository: repository)
        viewModel = NoUIExample.ViewModel(coordinator: mockCoordinator, companyUseCase: companyUseCase)
    }

    override func tearDown() {
        super.tearDown()
        viewModel = nil
        companyUseCase = nil
        repository = nil
        mockService = nil
        mockCoordinator = nil
    }

    func testBehaviourName() {
        // Test implementation
    }

}
