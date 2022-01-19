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
        let companyUseCase: CompanyUseCase
        
        weak var viewController: UIExampleViewController? {
            didSet {
                guard let viewController = viewController else { return }
                setupViewControllerObservers(for: viewController)
            }
        }
        
        private var cancellableBag = Set<AnyCancellable>()
        
        init(coordinator: Coordinator, companyUseCase: CompanyUseCase) {
            self.companyUseCase = companyUseCase
            
            super.init(coordinator: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
        func setupViewControllerObservers(for viewController: UIExampleViewController) {
            // Bind subjects from the view controller class to subjects in this class
            viewController.companyNameSubject
                .flatMap({ _ in
                    self.getCompanyName()
                })
                .compactMap { $0 }
                .sink(
                    receiveCompletion: { _ in },
                    receiveValue: { name in
                        viewController.companyNameLabel.text = name
                    })
                .store(in: &cancellableBag)
        }
        
        func getCompanyName() -> AnyPublisher<String?, Error> {
            return companyUseCase.getCompanyName()
        }
        
    }
}
