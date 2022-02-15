//
//  UIExampleFunctionalTests.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 15/02/2022.
//

import XCTest
import Combine
@testable import UIModule

class UIExampleFunctionalTests: XCTestCase {
    
    private var mockViewController: MockUIExampleViewController!
    
    private var viewModel: UIExample.ViewModel!
    private var companyUseCase: UIExample.CompanyUseCase!
    private var repository: UIExample.Repository!
    
    private var mockService: MockUIExampleService!
    private var mockCoordinator: MockUIExampleCoordinator!

    override func setUp() {

        super.setUp()

        mockCoordinator = MockUIExampleCoordinator()
        mockService = MockUIExampleService()
        mockViewController = MockUIExampleViewController()
        
        repository = UIExample.Repository(service: mockService)
        companyUseCase = UIExample.CompanyUseCase(repository: repository)
        viewModel = UIExample.ViewModel(coordinator: mockCoordinator, companyUseCase: companyUseCase)
        viewModel.viewController = mockViewController
    }

    override func tearDown() {
        super.tearDown()
        mockViewController = nil
        viewModel = nil
        companyUseCase = nil
        repository = nil
        mockService = nil
        mockCoordinator = nil
    }

    func testGetCompanyName() {
        let newName = "New NAME"
        let newHeadquarters = "Madrid"

        mockService.spyRetrieveCompanyInfo = Company(name: newName, headquartersCity: newHeadquarters)
        
        mockViewController.companyNameObservable.send()

        XCTAssertTrue(mockService.spyRetrieveCompanyInfoCalled, "Service - retrieveCompanyInfo method was not called")
        XCTAssertTrue(mockViewController.spySetCompanyNameCalled, "UIExampleViewController - setCompanyName method was not called")
        XCTAssertEqual(mockViewController.spySetCompanyNameName, newName, "UIExampleViewController - name in setCompanyName method not correct")
    }

}

