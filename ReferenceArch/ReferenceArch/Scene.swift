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

struct RootScene: ScenableProtocol {
    static func makeScene(coordinator: CoordinatorProtocol) -> RootScene {
        let service = RootService()
        let repository = RootRepository(service: service)
        let useCases = [RootUseCase(collaborator: repository)]
        let viewModel = RootViewModel(useCases: useCases, coordinator: coordinator)
        let viewController = RootViewController.instantiate()
        viewController.setViewModel(viewModel: viewModel)
        
        return Self(viewModel: viewModel, viewController: viewController)
    }
    

    let viewModel: RootViewModel
    let viewController: RootViewController

//    init(viewController: RootViewController<RootViewModel>,
//         coordinator: CoordinatorProtocol,
//         viewModel: RootViewModel,
//         useCases: [BaseUseCase],
//         collaborator: CollaboratorProtocol) {
//
//        let collaborator = collaborator ?? Repository1(service: service)
//
//        let useCases = useCases ?? [BaseUseCase(collaborator: collaborator)]
//
//        let viewModel = (viewModel as? T) ?? T(useCases: useCases, coordinator: coordinator)
//
//        let viewController = viewController ?? BaseViewController<BaseViewModel>(viewModel: viewModel)
//
//        self.viewModel = viewModel
//        self.viewController = viewController
//
//
        
//    init(coordinator: CoordinatorProtocol){
//        let service = RootService()
//        let repository = RootRepository(service: service)
//        let useCases = [RootUseCase(collaborator: repository)]
//        let viewModel = RootViewModel(useCases: useCases, coordinator: coordinator)
//        let viewController = RootViewController.instantiate()
//        viewController.setViewModel(viewModel: viewModel)
//        //RootViewController(viewModel: viewModel)
//
//
//        self.viewModel = viewModel
//        self.viewController = viewController
//    }
    
    init(viewModel: RootViewModel, viewController: RootViewController) {
        self.viewModel = viewModel
        self.viewController = viewController
    }
}

//protocol SceneProtocol {
////    static func makeScene() -> Scene<ViewModel1>
//    var viewModel: ViewModelProtocol
//    var viewController: BaseViewController<ViewModel1>
//}

//protocol ViewModelProtocol {
//    var useCases: [UseCase1] { get }
//    var coordinator: CoordinatorProtocol { get }
//
//    init(useCases: [UseCase1], coordinator: CoordinatorProtocol)
//}

class BaseViewModel {
    let useCases: [BaseUseCase]
    let coordinator: CoordinatorProtocol
    
    required init(useCases: [BaseUseCase], coordinator: CoordinatorProtocol) {
        self.useCases = useCases
        self.coordinator = coordinator
    }
}

class RootViewModel: BaseViewModel {
//    let useCases: [UseCase1]
//    let coordinator: CoordinatorProtocol
    
//    init(useCases: [UseCase1], coordinator: CoordinatorProtocol) {
//        self.useCases = useCases
//        self.coordinator = coordinator
//    }
}

class BaseUseCase {
    let collaborator: CollaboratorProtocol
    
    init(collaborator: CollaboratorProtocol) {
        self.collaborator = collaborator
    }
}

class RootUseCase: BaseUseCase {
//    let collaborator: CollaboratorProtocol
//
//    init(repository: CollaboratorProtocol) {
//        self.collaborator = repository
//    }
}


//class BaseViewController<T:BaseViewModel> : UIViewController { // NECESITO AVERIGUAR DONDE VA EL NIBPROTOCOL, SI AQUI O EN LA CLASE ROOTVIEWCONTROLLER
    
class BaseViewController: UIViewController {
    
    private(set) var viewModel: BaseViewModel? = nil
    
//    required init(viewModel: BaseViewModel) {
//        super.init()
//
//        self.setViewModel(viewModel: viewModel)
//
////        super.init(nibName: nil, bundle: nil)
//
//
//    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    func setViewModel(viewModel: BaseViewModel) {
        self.viewModel = viewModel
        configure(viewModel: viewModel)
    }
    
    func configure(viewModel: BaseViewModel) {}
}

//class RootViewController: BaseViewController<RootViewModel> {}

protocol CollaboratorProtocol {
//    var service: BaseService? { get }
}

class RootRepository: CollaboratorProtocol {
    var service: RootService
    
    init(service: RootService) {
        self.service = service
    }
}

class BaseService {}

class RootService: BaseService {
    
}
