//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import XCTest
import Combine
@testable import ___PROJECTNAME___


class ___VARIABLE_sceneName:identifier___CollaboratorTests: XCTestCase {
    
    private var mockService: Mock___VARIABLE_sceneName:identifier___Service!
    private var collaborator: ___VARIABLE_sceneName:identifier___.Collaborator!
    
    private var cancellableBag = Set<AnyCancellable>()

    override func setUp() {

        super.setUp()

        mockService = Mock___VARIABLE_sceneName:identifier___Service()
        
        collaborator = ___VARIABLE_sceneName:identifier___.Collaborator(service: mockService)
    }

    override func tearDown() {
        super.tearDown()
        mockService = nil
        collaborator = nil
    }

    func testMethodName() {
        // Test implementation
    }

}
