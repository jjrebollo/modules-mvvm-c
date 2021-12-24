//
//  ViewController.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 15/12/2021.
//

import UIKit
import Combine

//class RootViewController: BaseViewController<RootViewModel>, NibProtocol {
class RootViewController: BaseViewController<RootViewModel>, NibableProtocol {
    
    @IBOutlet weak var goToModuleWithUIButton: UIButton!
    
//    var goToModuleWithUIButtonPublisher: AnyPublisher<Void, Never> {
//        get {
//            goToModuleWithUIButton.publisher.eraseToAnyPublisher()
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func configure(viewModel: RootViewModel) {
//        goToModuleWithUIButton.publisher.
        // actually configure it
    }

    @IBAction func moduleWithUIButtonTouched(_ sender: Any) {
        self.viewModel?.moduleWithUIButtonSubject.send()
    }
}

