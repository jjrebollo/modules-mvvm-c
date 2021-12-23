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

class BaseViewModel {
    let coordinator: CoordinatorProtocol
    
    init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
    }
}

class RootViewModel: BaseViewModel {
    let rootUseCase: RootUseCase
    
    init(coordinator: CoordinatorProtocol, rootUseCase: RootUseCase) {
        self.rootUseCase = rootUseCase
        
        super.init(coordinator: coordinator)
    }
}

class RootUseCase {
    let reposiroty: CollaboratorProtocol
    
    init(collaborator: CollaboratorProtocol) {
        self.reposiroty = collaborator
    }
}

class BaseViewController<T:BaseViewModel>: UIViewController {
    
    private(set) var viewModel: T? = nil
    
    func setViewModel(viewModel: T) {
        self.viewModel = viewModel
        configure(viewModel: viewModel)
    }
    
    func configure(viewModel: T) {}
}

protocol CollaboratorProtocol {

}

class RootRepository: CollaboratorProtocol {
    var service: RootService
    
    init(service: RootService) {
        self.service = service
    }
}

//class BaseService {}

class RootService {
    
}
