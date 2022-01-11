//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

struct ___FILEBASENAMEASIDENTIFIER___ { }

extension ___FILEBASENAMEASIDENTIFIER___: SceneProtocol {

    static func makeScene(with repositories: RepositoryProviderProtocol) -> Scene<Controller> {
        let controller = Controller(repositories: repositories)
        let viewController = ViewController(controller: controller, router: repositories.routerRepository)
        return Scene(controller, viewController)
    }

}
