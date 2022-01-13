//
//  UIMockViewModel.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import Combine
import BaseModule

extension UIMock {
    final public class ViewModel: BaseViewModel {
        let rootUseCase: UseCase1
        
        private var cancellableBag = Set<AnyCancellable>()
        
        weak var viewController: UIMockViewController? {
            didSet {
                guard let viewController = viewController else { return }
                setupViewControllerObservers(for: viewController)
            }
        }
        
        init(coordinator: Coordinator, rootUseCase: UseCase1) {
            self.rootUseCase = rootUseCase
            
            super.init(coordinator: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
        func setupViewControllerObservers(for viewController: UIMockViewController) {
            // Bind subjects from the view controller class to subjects in this class
        }
        
    }
}
