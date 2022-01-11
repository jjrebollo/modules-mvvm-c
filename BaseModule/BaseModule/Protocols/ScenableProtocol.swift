//
//  Scene.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 21/12/2021.
//

import UIKit

public protocol ScenableProtocol {
    associatedtype ViewControllerType: BaseViewController
    static func makeScene(coordinator: CoordinatorProtocol) -> Scene<ViewControllerType>?
}

public struct Scene<T:BaseViewController> {
    public let viewController: T

    public init(viewController: T) {
        self.viewController = viewController
    }
}
