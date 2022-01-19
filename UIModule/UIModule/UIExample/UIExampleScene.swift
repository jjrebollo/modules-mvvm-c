//
//  UIExampleScene.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import BaseModule

public struct UIExample {}

extension UIExample: ScenableProtocol {
    
    public static func makeScene(coordinator: CoordinatorProtocol) -> Scene<UIExampleViewController, ViewModel>? {
        
        guard let coordinator = coordinator as? Coordinator else { return nil }
        
        let service = Service()
        let repository = Repository(service: service)
        let bankUseCase = CompanyUseCase(repository: repository)
        let viewModel = ViewModel(coordinator: coordinator, companyUseCase: bankUseCase)
        let nibName = UIExampleViewController.Constants.Nib
        let viewController = UIExampleViewController.instantiate(nibName: nibName)
        viewModel.viewController = viewController
        
        return Scene(viewController: viewController, viewModel: viewModel)
    }
}
