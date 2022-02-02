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
    final public class ViewModel: BaseViewModel {
        let useCase1: ___VARIABLE_sceneName:identifier___UseCase1Protocol
        
        private var cancellableBag = Set<AnyCancellable>()

        weak var viewController: ___VARIABLE_sceneName:identifier___ViewControllerProtocol? {
            didSet {
                guard let viewController = viewController else { return }
                setupViewControllerObservers(for: viewController)
            }
        }
        
        init(coordinator: CoordinatorProtocol, useCase1: ___VARIABLE_sceneName:identifier___UseCase1Protocol) {
            self.useCase1 = useCase1

            super.init(coordinator: coordinator)

            self.setupCoordinatorObservers(for: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: CoordinatorProtocol) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
        func setupViewControllerObservers(for viewController: ___VARIABLE_sceneName:identifier___ViewControllerProtocol) {
            // Bind subjects from the view controller class to subjects in this class
        }
        
    }
}
