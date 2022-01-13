//
//  RootScene.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 23/12/2021.
//

import Foundation
import BaseModule

struct Root {}

extension Root: ScenableProtocol {
    
    static func makeScene(coordinator: CoordinatorProtocol) -> Scene<RootViewController, ViewModel>? {
        
        guard let coordinator = coordinator as? Coordinator else { return nil }
        
        let service = Service()
        let repository = Repository(service: service)
        let useCase = UseCase1(collaborator: repository)
        let viewModel = ViewModel(coordinator: coordinator, rootUseCase: useCase)
        let nibName = RootViewController.Constants.Nib
        let viewController = RootViewController.instantiate(nibName: nibName)
        viewModel.viewController = viewController
        
        return Scene(viewController: viewController, viewModel: viewModel)
    }
}
