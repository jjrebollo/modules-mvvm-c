//
//  Scene.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 21/12/2021.
//

import UIKit

public protocol ScenableProtocol {
    associatedtype SceneType: SceneProtocol
    static func makeScene(coordinator: CoordinatorProtocol) -> SceneType?
}
