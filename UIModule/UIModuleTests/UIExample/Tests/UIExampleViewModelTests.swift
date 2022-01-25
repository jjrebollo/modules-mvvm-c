//
//  UIExampleViewModelTests.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 20/01/2022.
//

import XCTest
import Combine
@testable import UIModule

class UIExmapleTests: XCTestCase {
    
    private var mockCoordinator: MockUIExampleCoordinator!
    private var mockCompanyUseCase: MockUIExampleCompanyUseCase!
    private var mockViewController: MockUIExampleViewController!
    private var viewModel: UIExample.ViewModel!

    override func setUp() {

        super.setUp()

        mockCoordinator = MockUIExampleCoordinator()
        mockCompanyUseCase = MockUIExampleCompanyUseCase()
        mockViewController = MockUIExampleViewController()
        
        viewModel = UIExample.ViewModel(coordinator: mockCoordinator, companyUseCase: mockCompanyUseCase)
        viewModel.viewController = mockViewController
    }

    override func tearDown() {
        super.tearDown()
        mockCoordinator = nil
        mockCompanyUseCase = nil
        mockViewController = nil
        viewModel = nil
    }

    func testViewModelBinding() {
        let newName = "New NAME"
        mockCompanyUseCase.spyCompanyName = newName
        
        mockViewController.companyNameObservable.send()

        XCTAssertTrue(mockCompanyUseCase.spyGetCompanyNameCalled, "CompanyUseCase - getCompanyName method was not called")
        XCTAssertTrue(mockViewController.spySetCompanyNameCalled, "UIExampleViewController - setCompanyName method was not called")
        XCTAssertEqual(mockViewController.spySetCompanyNameName, newName, "UIExampleViewController - name in setCompanyName method not correct")
    }

}
