//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import XCTest
import Combine
@testable import ___PROJECTNAME___

class ___VARIABLE_sceneName:identifier___FunctionalTests: XCTestCase {
    
    private var mockViewController: Mock___VARIABLE_sceneName:identifier___ViewController!
    
    private var viewModel: ___VARIABLE_sceneName:identifier___.ViewModel!
    private var useCase1: ___VARIABLE_sceneName:identifier___.UseCase1!
    private var collaborator: ___VARIABLE_sceneName:identifier___.Collaborator!
    
    private var mockService: Mock___VARIABLE_sceneName:identifier___Service!
    private var mockCoordinator: Mock___VARIABLE_sceneName:identifier___Coordinator!

    override func setUp() {

        super.setUp()

        mockCoordinator = Mock___VARIABLE_sceneName:identifier___Coordinator()
        mockService = Mock___VARIABLE_sceneName:identifier___Service()
        mockViewController = Mock___VARIABLE_sceneName:identifier___ViewController()
        
        collaborator = ___VARIABLE_sceneName:identifier___.Collaborator(service: mockService)
        useCase1 = ___VARIABLE_sceneName:identifier___.UseCase1(collaborator: collaborator)
        viewModel = ___VARIABLE_sceneName:identifier___.ViewModel(coordinator: mockCoordinator, useCase1: useCase1)
        viewModel.viewController = mockViewController
    }

    override func tearDown() {
        super.tearDown()
        mockViewController = nil
        viewModel = nil
        useCase1 = nil
        collaborator = nil
        mockService = nil
        mockCoordinator = nil
    }

    func testBehaviourName() {
        // Test implementation
    }

}

