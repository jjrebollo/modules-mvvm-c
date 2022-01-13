//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import Combine
import BaseModule

extension ___VARIABLE_sceneName:identifier___ {
    final public class ViewModel: BaseViewModel<___VARIABLE_sceneName:identifier___ViewController> {
        let useCase1: UseCase1
        
        private var cancellableBag = Set<AnyCancellable>()

        weak var viewController: ___VARIABLE_sceneName:identifier___ViewController? {
            didSet {
                guard let viewController = viewController else { return }
                setupViewControllerObservers(for: viewController)
            }
        }
        
        init(coordinator: Coordinator, useCase1: UseCase1) {
            self.useCase1 = useCase1

            super.init(coordinator: coordinator)

            self.setupCoordinatorObservers(for: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
        func setupViewControllerObservers(for viewController: ___VARIABLE_sceneName:identifier___ViewController) {
            // Bind subjects from the view controller class to subjects in this class
        }
        
    }
}
