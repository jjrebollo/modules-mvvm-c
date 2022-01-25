//
//  UIExampleViewModel.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import Combine
import BaseModule

extension UIExample {
    final public class ViewModel: BaseViewModel {
        let companyUseCase: CompanyUseCaseProtocol
        
        weak var viewController: UIExampleViewControllerProtocol? {
            didSet {
                guard let viewController = viewController else { return }
                setupViewControllerObservers(for: viewController)
            }
        }
        
        private var cancellableBag = Set<AnyCancellable>()
        
        init(coordinator: CoordinatorProtocol, companyUseCase: CompanyUseCaseProtocol) {
            self.companyUseCase = companyUseCase
            
            super.init(coordinator: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
        func setupViewControllerObservers(for viewController: UIExampleViewControllerProtocol) {
            // Bind subjects from the view controller class to subjects in this class
            viewController.getCompanyNameObservable()
                .flatMap({ _ in
                    self.getCompanyName()
                })
                .compactMap { $0 }
                .sink(
                    receiveCompletion: { _ in },
                    receiveValue: { [viewController] name in
                        viewController.setCompanyName(name: name)
                    })
                .store(in: &cancellableBag)
        }
        
        func getCompanyName() -> AnyPublisher<String?, Error> {
            return companyUseCase.getCompanyName()
        }
        
    }
}
