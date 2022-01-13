//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import BaseModule
import UIKit

extension ___VARIABLE_sceneName:identifier___ {

    // Instead of `CoordinatorProtocol`, this class can inherit from one of the specific base coordinator such as `BaseNavigationCoordinator`
    final public class Coordinator<T:BaseViewController>: CoordinatorProtocol { 
        
        var scene: SceneNoUI<ViewModel>? = nil
        
        public func start() {
            guard let scene = ___VARIABLE_sceneName:identifier___.makeScene(coordinator: self) else { return }
            self.scene = scene
            // Push view controller in container
        }

        public func setViewController(viewController: T) {
            scene?.viewController = viewController
            scene?.viewModel = viewController
        }

        // Declare public methods that return variables to be observed (from view model mainly)
    }
}
