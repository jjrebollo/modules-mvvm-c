//
//  UIExampleRepositoryTests.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 26/01/2022.
//

import XCTest
import Combine
@testable import UIModule


class UIExampleRepositoryTests: XCTestCase {
    
    private var mockService: MockUIExampleService!
    private var repository: UIExample.Repository!
    
    private var cancellableBag = Set<AnyCancellable>()

    override func setUp() {

        super.setUp()

        mockService = MockUIExampleService()
        
        repository = UIExample.Repository(service: mockService)
    }

    override func tearDown() {
        super.tearDown()
        mockService = nil
        repository = nil
    }

    func testGetCompanyName() {
        let newName = "New NAME"
        let newHeadquarters = "Madrid"
        let errorName = "-1"
        mockService.spyRetrieveCompanyInfo = Company(name: newName, headquartersCity: newHeadquarters)
        
        var nameReceived = ""
        let expectation = XCTestExpectation(description: "Name received")
        
        repository.getCompanyName()
            .sink (
                receiveCompletion: { _ in },
                receiveValue: { name in
                    nameReceived = name ?? errorName
                    expectation.fulfill()
                })
            .store(in: &cancellableBag)

        XCTAssertTrue(mockService.spyRetrieveCompanyInfoCalled, "Service - retrieveCompanyInfo method was not called")
        XCTAssertEqual(nameReceived, newName, "Repository - name in getCompanyName method not correct")
        wait(for: [expectation], timeout: 1.0)
    }

}
