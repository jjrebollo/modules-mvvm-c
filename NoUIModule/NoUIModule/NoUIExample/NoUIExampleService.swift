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
        func retrieveBankInfo() -> Future<Bank?, Error> {
            Future { promise in
                promise(.success(Bank()))
            }
        }
    }
}
