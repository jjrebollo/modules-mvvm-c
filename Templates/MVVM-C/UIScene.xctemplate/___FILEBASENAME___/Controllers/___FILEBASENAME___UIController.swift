//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension ___VARIABLE_sceneName:identifier___ {

    final class UIController: BaseUIController, ___VARIABLE_sceneName:identifier___UIControllerProtocol {

        private(set) var view: ___VARIABLE_sceneName:identifier___View
        fileprivate weak var controller: ___VARIABLE_sceneName:identifier___ControllerProtocol?

        init(view: ___VARIABLE_sceneName:identifier___View, controller: ___VARIABLE_sceneName:identifier___ControllerProtocol) {
            self.view = view
            self.controller = controller
            super.init()
            connections = []
        }
    }

}
