//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import BaseModule

extension ___VARIABLE_sceneName:identifier___ {

    // UseCase1 class name should be renamed to a proper name
    final class UseCase1: ___VARIABLE_sceneName:identifier___UseCase1Protocol {
        let collaborator: ___VARIABLE_sceneName:identifier___CollaboratorProtocol // Can be renamed to `repository``
        
        init(collaborator: ___VARIABLE_sceneName:identifier___CollaboratorProtocol) {
            self.collaborator = collaborator
        }
    }
}
