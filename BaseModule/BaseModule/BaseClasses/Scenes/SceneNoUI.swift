//
//  SceneNoUI.swift
//  BaseModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import UIKit

public struct SceneNoUI<T:BaseViewModel>: SceneProtocol {
    public var viewController: BaseViewController? = nil
    public let viewModel: T

    public init(viewModel: T) {
        self.viewModel = viewModel
    }
}
