//
//  Scene.swift
//  BaseModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import UIKit

public struct Scene<T:BaseViewController, R:BaseViewModel>: SceneProtocol {
    public let viewController: T
    public let viewModel: R

    public init(viewController: T, viewModel: R) {
        self.viewController = viewController
        self.viewModel = viewModel
    }
}
