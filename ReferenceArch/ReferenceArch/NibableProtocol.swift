//
//  NibProtocol.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 16/12/2021.
//

import Foundation
import UIKit

protocol NibableProtocol {
    static func instantiate() -> Self
}

extension NibableProtocol where Self: UIViewController {
    static func instantiate() -> Self {
        let nibName = String(describing: self)
        
        if let viewController = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first as? Self {
            return viewController
        } else {
            return Self()
        }
    }
}

//extension NibProtocol where Self: BaseViewController {
//    static func instantiate(viewModel: BaseViewModel) -> Self {
//        let nibName = String(describing: self)
//
//        if let viewController = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first as? Self {
//            viewController.setViewModel(viewModel: viewModel)
//            return viewController
//        } else {
//            let vc = Self()
//            vc.setViewModel(viewModel: viewModel)
//            return vc
//        }
//    }
//}
