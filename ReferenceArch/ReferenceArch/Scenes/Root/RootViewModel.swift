//
//  RootViewModel.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import Foundation

class RootViewModel: BaseViewModel {
    let rootUseCase: RootUseCase
    
    init(coordinator: CoordinatorProtocol, rootUseCase: RootUseCase) {
        self.rootUseCase = rootUseCase
        
        super.init(coordinator: coordinator)
    }
}
