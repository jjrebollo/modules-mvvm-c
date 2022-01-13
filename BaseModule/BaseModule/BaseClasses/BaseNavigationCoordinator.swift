//
//  BaseCoordinator.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 10/01/2022.
//

import Foundation

open class BaseNavigationCoordinator<T:BaseNavigationController>: CoordinatorProtocol {
    
    public var navigationController: T
    
    public init(navigationController: T) {
        self.navigationController = navigationController
    }
    
    open func start() {}

}
