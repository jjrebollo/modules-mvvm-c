//
//  NoUIExampleViewModelTests.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 02/02/2022.
//

import XCTest
import Combine
@testable import NoUIModule

class NoUIExampleViewModelTests: XCTestCase {
    
    private var mockCoordinator: MockNoUIExampleCoordinator!
    private var companyUseCase: MockNoUIExampleCompanyUseCase!
    private var viewModel: NoUIExample.ViewModel!

    override func setUp() {

        super.setUp()

        mockCoordinator = MockNoUIExampleCoordinator()
        companyUseCase = MockNoUIExampleCompanyUseCase()
        
        viewModel = NoUIExample.ViewModel(coordinator: mockCoordinator, companyUseCase: companyUseCase)
    }

    override func tearDown() {
        super.tearDown()
        mockCoordinator = nil
        companyUseCase = nil
        viewModel = nil
    }

    func testMethodName() {
        // Test implementation
    }

}
