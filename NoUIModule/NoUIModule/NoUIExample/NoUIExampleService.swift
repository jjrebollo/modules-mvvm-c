//
//  NoUIExampleService.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import Foundation
import Combine

extension NoUIExample {
    final class Service {
        func retrieveCompanyInfo() -> Future<Company?, Error> {
            Future { promise in
                promise(.success(Company()))
            }
        }
    }
}
