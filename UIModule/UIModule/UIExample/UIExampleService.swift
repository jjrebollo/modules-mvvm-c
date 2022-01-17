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
        func retrieveBankInfo() -> Future<Bank?, Error> {
            Future { promise in
                promise(.success(Bank()))
            }
        }
    }
}
