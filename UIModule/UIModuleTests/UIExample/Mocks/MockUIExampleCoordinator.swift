//
//  MockUIExampleCoordinator.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 20/01/2022.
//

import BaseModule

final class MockUIExampleCoordinator: CoordinatorProtocol {
    
    var startCalledSpy = false
    func start() {
        startCalledSpy = true
    }
}
