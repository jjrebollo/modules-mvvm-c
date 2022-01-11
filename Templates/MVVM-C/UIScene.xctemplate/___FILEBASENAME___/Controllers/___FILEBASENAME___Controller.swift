//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension ___VARIABLE_sceneName:identifier___ {

    final class Controller: BaseController, ___VARIABLE_sceneName:identifier___ControllerProtocol, RepositoryProviderContainerProtocol {

        public weak var uiController: ___VARIABLE_sceneName:identifier___UIControllerProtocol?
        internal let repositories: RepositoryProviderProtocol

        init(repositories: RepositoryProviderProtocol) {
            self.repositories = repositories
            super.init()
        }

    }

}
