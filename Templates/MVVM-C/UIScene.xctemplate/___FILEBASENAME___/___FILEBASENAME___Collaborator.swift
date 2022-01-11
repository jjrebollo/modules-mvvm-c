//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import BaseModule

class RootRepository: CollaboratorProtocol {
    var service: RootService
    
    init(service: RootService) {
        self.service = service
    }
}
