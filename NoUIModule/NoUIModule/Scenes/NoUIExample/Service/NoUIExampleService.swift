//
//  UIExampleService.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import Combine

extension NoUIExample {
    final class Service: NoUIExampleServiceProtocol {
        func retrieveCompanyInfo() -> Future<Company?, Error> {
            Future { promise in
                promise(.success(Company()))
            }
        }
    }
}
