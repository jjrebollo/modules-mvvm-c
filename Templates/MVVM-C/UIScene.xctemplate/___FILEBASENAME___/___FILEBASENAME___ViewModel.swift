//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import Combine
import BaseModule

extension Root {
    final class ViewModel: BaseViewModel<___VARIABLE_sceneName:identifier___ViewController> {
        let rootUseCase: UseCase1
        
        private var cancellableBag = Set<AnyCancellable>()

        
        weak var viewController: ___VARIABLE_sceneName:identifier___ViewController? {
            didSet {
                guard let viewController = viewController else { return }
                setupViewControllerObservers(for: viewController)
            }
        }
        
        init(coordinator: Coordinator, rootUseCase: UseCase1) {
            self.rootUseCase = rootUseCase
            
            super.init(coordinator: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
        override func setupViewControllerObservers(for viewController: RootViewController) {
            // Bind subjects from the view controller class to subjects in this class
        }
        
    }
}
