//
//  Scene.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 21/12/2021.
//

import UIKit

protocol ScenableProtocol {
    static func makeScene(coordinator: CoordinatorProtocol) -> Self
}
