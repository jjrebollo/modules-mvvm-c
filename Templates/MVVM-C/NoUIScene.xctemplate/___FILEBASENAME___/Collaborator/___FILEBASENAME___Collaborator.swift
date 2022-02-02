//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import BaseModule

extension ___VARIABLE_sceneName:identifier___ {
    final class Collaborator: ___VARIABLE_sceneName:identifier___CollaboratorProtocol {
        var service: ___VARIABLE_sceneName:identifier___ServiceProtocol
        
        init(service: ___VARIABLE_sceneName:identifier___ServiceProtocol) {
            self.service = service
        }
    }
}
