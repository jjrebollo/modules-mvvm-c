//
//  BaseViewModel.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation

open class BaseViewModel<T:BaseViewController> {
    let coordinator: CoordinatorProtocol
    var viewController: T? = nil
    
    public init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    public func setViewController(viewController: T){
        self.viewController = viewController
        setupViewControllerObservers(for: viewController)
    }
    
    open func setupViewControllerObservers(for viewController: T){}
}
