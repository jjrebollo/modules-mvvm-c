//
//  MockUIExampleViewController.swift
//  UIModuleTests
//
//  Created by Juan Jose Rebollo on 20/01/2022.
//

import Combine
@testable import UIModule

final class MockUIExampleViewController: UIExampleViewControllerProtocol {

    var spySetCompanyNameCalled = false
    var spySetCompanyNameName = ""
    func setCompanyName(name: String) {
        spySetCompanyNameCalled = true
        spySetCompanyNameName = name
    }
    
    var spyGetCompanyNameObservableCalled = false
    let companyNameObservable = PassthroughSubject<Void, Never>()
    func getCompanyNameObservable() -> PassthroughSubject<Void, Never> {
        spyGetCompanyNameObservableCalled = true
        return companyNameObservable
    }
    
}
