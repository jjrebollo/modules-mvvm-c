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
    
    static func makeScene(coordinator: CoordinatorProtocol) -> Scene<___VARIABLE_sceneName:identifier___ViewController>? {
        
        guard let coordinator = coordinator as? Coordinator else { return nil }
        
        let service = Service()
        let repository = Repository(service: service)
        let useCase = UseCase1(collaborator: repository)
        let viewModel = ViewModel(coordinator: coordinator, rootUseCase: useCase)
        let nibName = ___VARIABLE_sceneName:identifier___ViewController.Constants.Nib
        let viewController = ___VARIABLE_sceneName:identifier___ViewController.instantiate(nibName: nibName)
        viewModel.setViewController(viewController: viewController)
        
        return Scene(viewController: viewController)
    }
}
