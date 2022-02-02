//
//  BankResponse.swift
//  NoUIModule
//
//  Created by Juan Jose Rebollo on 14/01/2022.
//

import Foundation

struct Company {
    var name: String
    var headquartersCity: String
    
    init() {
        self.name = "Wayne B Enterprises"
        self.headquartersCity = "London"
    }
    
    init(name: String, headquartersCity: String) {
        self.name = name
        self.headquartersCity = headquartersCity
    }
}
