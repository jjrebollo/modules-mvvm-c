//
//  UIExampleServiceProtocol.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 26/01/2022.
//

import Foundation
import Combine

protocol NoUIExampleServiceProtocol {
    func retrieveCompanyInfo() -> Future<Company?, Error>
}
