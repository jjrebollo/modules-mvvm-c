//
//  UIExampleViewControllerProtocol.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 20/01/2022.
//

import UIKit
import Combine

protocol UIExampleViewControllerProtocol: AnyObject {
    func setCompanyName(name: String)
    func getCompanyNameObservable() -> PassthroughSubject<Void, Never>
}
