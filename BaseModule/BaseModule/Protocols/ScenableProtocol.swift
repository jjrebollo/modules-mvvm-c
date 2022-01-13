//
//  Scene.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 21/12/2021.
//

import UIKit

public protocol ScenableProtocol {
    associatedtype ViewControllerType: BaseViewController
    associatedtype ViewModelType: BaseViewModel
    static func makeScene(coordinator: CoordinatorProtocol) -> Scene<ViewControllerType, ViewModelType>?
}


public struct Scene<T:BaseViewController, R:BaseViewModel> {
    public let viewController: T
    public let viewModel: R

    public init(viewController: T, viewModel: R) {
        self.viewController = viewController
        self.viewModel = viewModel
    }
}
