//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import BaseModule

class RootUseCase {
    let reposiroty: CollaboratorProtocol
    
    init(collaborator: CollaboratorProtocol) {
        self.reposiroty = collaborator
    }
}
