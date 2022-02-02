//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import XCTest
import Combine
@testable import ___PROJECTNAME___

class ___VARIABLE_sceneName:identifier___ViewModelTests: XCTestCase {
    
    private var mockCoordinator: Mock___VARIABLE_sceneName:identifier___Coordinator!
    private var mockUseCase1: Mock___VARIABLE_sceneName:identifier___UseCase1!
    private var viewModel: ___VARIABLE_sceneName:identifier___.ViewModel!

    override func setUp() {

        super.setUp()

        mockCoordinator = Mock___VARIABLE_sceneName:identifier___Coordinator()
        mockUseCase1 = Mock___VARIABLE_sceneName:identifier___UseCase1()
        
        viewModel = ___VARIABLE_sceneName:identifier___.ViewModel(coordinator: mockCoordinator, useCase1: mockUseCase1)
    }

    override func tearDown() {
        super.tearDown()
        mockCoordinator = nil
        mockUseCase1 = nil
        viewModel = nil
    }

    func testMethodName() {
        // Test implementation
    }

}
