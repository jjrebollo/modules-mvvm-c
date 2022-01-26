//
//  UIExampleUseCaseTest.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 26/01/2022.
//

import Foundation

import XCTest
import Combine
@testable import UIModule

class UIExampleCompanyUseCaseTests: XCTestCase {
    
    private var mockRepository: MockUIExampleRepository!
    private var companyUseCase: UIExample.CompanyUseCase!
    
    private var cancellableBag = Set<AnyCancellable>()

    override func setUp() {

        super.setUp()

        mockRepository = MockUIExampleRepository()
        
        companyUseCase = UIExample.CompanyUseCase(repository: mockRepository)
    }

    override func tearDown() {
        super.tearDown()
        mockRepository = nil
        companyUseCase = nil
    }

    func testGetCompanyName() {
        let newName = "New NAME"
        let errorName = "-1"
        mockRepository.spyCompanyName = newName
        
        var nameReceived = ""
        let expectation = XCTestExpectation(description: "Name received")
        
        companyUseCase.getCompanyName()
            .sink (
                receiveCompletion: { _ in },
                receiveValue: { name in
                    nameReceived = name ?? errorName
                    expectation.fulfill()
                })
            .store(in: &cancellableBag)

        XCTAssertTrue(mockRepository.spyGetCompanyNameCalled, "Repository - getCompanyName method was not called")
        XCTAssertEqual(nameReceived, newName, "Repository - name in setCompanyName method not correct")
        wait(for: [expectation], timeout: 1.0)
    }

}
