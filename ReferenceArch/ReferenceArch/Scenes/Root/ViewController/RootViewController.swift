//
//  ViewController.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 15/12/2021.
//

import UIKit

//class RootViewController: BaseViewController<RootViewModel>, NibProtocol {
class RootViewController: BaseViewController<RootViewModel>, NibableProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func configure(viewModel: RootViewModel) {
        
        // actually configure it
    }

}

