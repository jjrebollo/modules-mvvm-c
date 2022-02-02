//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import BaseModule

public struct ___VARIABLE_sceneName:identifier___ {}

extension ___VARIABLE_sceneName:identifier___: ScenableProtocol {
    
    static public func makeScene(coordinator: CoordinatorProtocol) -> SceneNoUI<ViewModel>? {
        
        guard let coordinator = coordinator as? Coordinator else { return nil }
        
        let service = Service()
        let collaborator = Collaborator(service: service)
        let useCase = UseCase1(collaborator: collaborator)
        let viewModel = ViewModel(coordinator: coordinator, useCase1: useCase)
        
        return SceneNoUI(viewModel: viewModel)
    }
}
