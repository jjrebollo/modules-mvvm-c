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
    final public class Coordinator: CoordinatorProtocol { 
        
        var scene: Scene<___VARIABLE_sceneName:identifier___ViewController, ViewModel>? = nil

        public init() {
            self.scene = ___VARIABLE_sceneName:identifier___.makeScene(coordinator: self)
        }
        
        public func start() {
            guard let scene = self.scene else { return }
            
            // Push view controller in container
        }

    }
}
