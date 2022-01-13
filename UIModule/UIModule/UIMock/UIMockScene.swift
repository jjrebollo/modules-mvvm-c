//
//  UIMockScene.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import BaseModule

public struct UIMock {}

extension UIMock: ScenableProtocol {
    
    public static func makeScene(coordinator: CoordinatorProtocol) -> Scene<UIMockViewController, ViewModel>? {
        
        guard let coordinator = coordinator as? Coordinator else { return nil }
        
        let service = Service()
        let repository = Collaborator(service: service)
        let useCase = UseCase1(collaborator: repository)
        let viewModel = ViewModel(coordinator: coordinator, rootUseCase: useCase)
        let nibName = UIMockViewController.Constants.Nib
        let viewController = UIMockViewController.instantiate(nibName: nibName)
        viewModel.viewController = viewController
        
        return Scene(viewController: viewController, viewModel: viewModel)
    }
}
