//
//  NibProtocol.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 16/12/2021.
//

import UIKit

public protocol NibableProtocol {
    static func instantiate(nibName: String) -> Self
}

extension NibableProtocol where Self: UIViewController {
    public static func instantiate(nibName: String) -> Self {
        
        let bundle = Bundle(for: Self.self)

        if let viewController = bundle.loadNibNamed(nibName, owner: nil, options: nil)?.first as? Self {
            return viewController
        } else {
            return Self()
        }
    }
}
