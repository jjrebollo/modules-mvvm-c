//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension ___VARIABLE_sceneName:identifier___ {

    final class ViewController: BaseViewController {

        fileprivate struct Constants {

            struct Filenames {

                static let Nib: String = "___VARIABLE_sceneName:identifier___View"
            }
        }

        fileprivate let controller: ___VARIABLE_sceneName:identifier___ControllerProtocol
        fileprivate var uiController: ___VARIABLE_sceneName:identifier___UIControllerProtocol!

        var customView: ___VARIABLE_sceneName:identifier___View? { return view as? ___VARIABLE_sceneName:identifier___View }

        init(controller: ___VARIABLE_sceneName:identifier___ControllerProtocol, router: RouterRepositoryProtocol) {
            self.controller = controller
            super.init(screen: <#Router.Screen#>, router: router)
        }

        override func loadView() {
            if let view = Bundle.main.loadNibNamed(Constants.Filenames.Nib, owner: nil, options: nil)?.first as? ___VARIABLE_sceneName:identifier___View {
                self.view = view
            } else {
                self.view = ___VARIABLE_sceneName:identifier___View()
            }
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            uiController = UIController(view: customView!, controller: controller)
            uiController.viewController = self
            controller.uiController = uiController
        }
    }

}
