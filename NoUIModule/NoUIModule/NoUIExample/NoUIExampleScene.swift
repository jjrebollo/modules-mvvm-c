//
//  NoUIMockScene.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import BaseModule

public struct NoUIExample {}

extension NoUIExample: ScenableProtocol {
    
    public static func makeScene(coordinator: CoordinatorProtocol) -> SceneNoUI<ViewModel>? {
        
        guard let coordinator = coordinator as? Coordinator else { return nil }
        
        let service = Service()
        let collaborator = Collaborator(service: service)
        let useCase = UseCase1(collaborator: collaborator)
        let viewModel = ViewModel(coordinator: coordinator, useCase1: useCase)
        
        return SceneNoUI(viewModel: viewModel)
    }
}
