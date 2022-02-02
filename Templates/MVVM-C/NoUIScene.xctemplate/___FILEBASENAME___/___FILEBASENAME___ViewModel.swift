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
    final class ViewModel: BaseViewModel {
        let useCase1: UseCase1
        
        private var cancellableBag = Set<AnyCancellable>()
        
        init(coordinator: CoordinatorProtocol, useCase1: UseCase1) {
            self.useCase1 = useCase1

            super.init(coordinator: coordinator)

            self.setupCoordinatorObservers(for: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: CoordinatorProtocol) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
    }
}
