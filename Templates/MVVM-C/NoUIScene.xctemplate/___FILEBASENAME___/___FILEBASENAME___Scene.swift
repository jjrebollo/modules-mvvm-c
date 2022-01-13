//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import BaseModule

struct ___VARIABLE_sceneName:identifier___ {}

extension ___VARIABLE_sceneName:identifier___: ScenableProtocol {
    
    static func makeScene(coordinator: CoordinatorProtocol) -> SceneNoUI<ViewModel>? {
        
        guard let coordinator = coordinator as? Coordinator else { return nil }
        
        let service = Service()
        let collaborator = Collaborator(service: service)
        let useCase = UseCase1(collaborator: collaborator)
        let viewModel = ViewModel(coordinator: coordinator, rootUseCase: useCase)
        
        return SceneNoUI(viewModel: viewModel)
    }
}
