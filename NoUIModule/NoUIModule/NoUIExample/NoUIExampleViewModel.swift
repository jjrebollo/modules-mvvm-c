//
//  NoUIExampleViewModel.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import Combine
import BaseModule

extension NoUIExample {
    final public class ViewModel: BaseViewModel {
        let companyUseCase: CompanyNameUseCase
        
        init(coordinator: Coordinator, companyUseCase: CompanyNameUseCase) {
            self.companyUseCase = companyUseCase

            super.init(coordinator: coordinator)

            self.setupCoordinatorObservers(for: coordinator)
        }
        
        func setupCoordinatorObservers(for coordinator: Coordinator) {
            // Bind subjects from this class to subjects in the coordinator class
        }
        
        func getCompanyName() {
            self.companyUseCase.getCompanyName()
        }
        
        func companyNameSubject() -> PassthroughSubject<String?, Never> {
            return companyUseCase.getCompanyNameSubject()
        }
        
    }
}
