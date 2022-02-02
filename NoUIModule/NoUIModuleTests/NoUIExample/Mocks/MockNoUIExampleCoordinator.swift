//
//  MockNoUIExampleCoordinator.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 02/02/2022.
//

import BaseModule

final class MockNoUIExampleCoordinator: CoordinatorProtocol {

    var startCalledSpy = false
    func start() {
        startCalledSpy = true
    }

}
