//
//  BaseViewController.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 24/12/2021.
//

import UIKit

open class BaseViewController<T:BaseViewModel>: UIViewController {
    
    private(set) var viewModel: T? = nil
    
    public func setViewModel(viewModel: T) {
        self.viewModel = viewModel
        configure(viewModel: viewModel)
    }
    
    open func configure(viewModel: T) {}
}
