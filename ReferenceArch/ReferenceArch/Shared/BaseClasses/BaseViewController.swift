//
//  BaseViewController.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import UIKit

class BaseViewController<T:BaseViewModel>: UIViewController {
    
    private(set) var viewModel: T? = nil
    
    func setViewModel(viewModel: T) {
        self.viewModel = viewModel
        configure(viewModel: viewModel)
    }
    
    func configure(viewModel: T) {}
}
