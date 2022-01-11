//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import BaseModule
import UIKit

extension ___VARIABLE_sceneName:identifier___ {
    final class Coordinator: CoordinatorProtocol {
        
        var scene: Scene<___VARIABLE_sceneName:identifier___ViewController>? = nil
        
        init() {
            configureObservables()
        }
        
        func start() {
            guard let scene = Root.makeScene(coordinator: self) else { return }
            self.scene = scene
            // Push view controller in container
        }

        func configureObservables() {
            // 
        }
    }
}
