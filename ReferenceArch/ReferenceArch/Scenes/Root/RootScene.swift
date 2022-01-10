//
//  RootScene.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 23/12/2021.
//

import Foundation

struct RootScene: ScenableProtocol {
    static func makeScene(coordinator: CoordinatorProtocol) -> RootScene? {
        
        guard let coordinator = coordinator as? RootCoordinator else { return nil }
        
        let service = RootService()
        let repository = RootRepository(service: service)
        let useCase = RootUseCase(collaborator: repository)
        let viewModel = RootViewModel(coordinator: coordinator, rootUseCase: useCase)
        let viewController = RootViewController.instantiate()
        viewController.setViewModel(viewModel: viewModel)
        
        return Self(viewModel: viewModel, viewController: viewController)
    }

    let viewModel: RootViewModel
    let viewController: RootViewController

    init(viewModel: RootViewModel, viewController: RootViewController) {
        self.viewModel = viewModel
        self.viewController = viewController
    }
}
