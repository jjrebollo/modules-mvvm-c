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
    
    static public func makeScene(coordinator: CoordinatorProtocol) -> Scene<___VARIABLE_sceneName:identifier___ViewController, ViewModel>? {
        
        guard let coordinator = coordinator as? Coordinator else { return nil }
        
        let service = Service()
        let collaborator = Collaborator(service: service)
        let useCase = UseCase1(collaborator: collaborator)
        let viewModel = ViewModel(coordinator: coordinator, useCase1: useCase)
        let nibName = ___VARIABLE_sceneName:identifier___ViewController.Constants.Nib
        let viewController = ___VARIABLE_sceneName:identifier___ViewController.instantiate(nibName: nibName)
        viewModel.viewController = viewController
        
        return Scene(viewController: viewController, viewModel: viewModel)
    }
}
