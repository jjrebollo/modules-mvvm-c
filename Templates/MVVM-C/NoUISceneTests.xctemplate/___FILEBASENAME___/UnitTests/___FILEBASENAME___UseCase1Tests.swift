//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import XCTest
import Combine
@testable import ___PROJECTNAME___

class ___VARIABLE_sceneName:identifier___UseCase1Tests: XCTestCase {
    
    private var mockCollaborator: Mock___VARIABLE_sceneName:identifier___Collaborator!
    private var useCase1: ___VARIABLE_sceneName:identifier___.UseCase1!
    
    private var cancellableBag = Set<AnyCancellable>()

    override func setUp() {

        super.setUp()

        mockCollaborator = Mock___VARIABLE_sceneName:identifier___Collaborator()
        
        useCase1 = ___VARIABLE_sceneName:identifier___.UseCase1(collaborator: mockCollaborator)
    }

    override func tearDown() {
        super.tearDown()
        mockCollaborator = nil
        useCase1 = nil
    }

    func testMethodName() {
        // Test implementation
    }

}