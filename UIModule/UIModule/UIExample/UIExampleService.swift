//
//  UIExampleService.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import Foundation
import Combine

extension UIExample {
    final class Service {
        func retrieveCompanyInfo() -> Future<Company?, Error> {
            Future { promise in
                promise(.success(Company()))
            }
        }
    }
}
