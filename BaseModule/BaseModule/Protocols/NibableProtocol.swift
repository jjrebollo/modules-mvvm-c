//
//  NibProtocol.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 16/12/2021.
//

import Foundation
import UIKit

public protocol NibableProtocol {
    static func instantiate() -> Self
}

extension NibableProtocol where Self: UIViewController {
    public static func instantiate() -> Self {
        let nibName = String(describing: self)
        
        if let viewController = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first as? Self {
            return viewController
        } else {
            return Self()
        }
    }
}
