//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import BaseModule
import UIKit
import Combine

class RootCoordinator: CoordinatorProtocol {

    // Coordinators declaration
    var navigationController: BaseNavigationController
    
    var scene: RootScene? = nil
    
    let moduleWithUIButtonSubject = PassthroughSubject<Void, Never>()
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
        
        configureObservables()
    }
    
    func start() {
        guard let scene = RootScene.makeScene(coordinator: self) else { return }
        self.scene = scene
        navigationController.pushViewController(scene.viewController, animated: true)
    }

    func configureObservables() {
        // observe moduleWithUIButtonSubject and create the new coordinator + start it
    }
}
