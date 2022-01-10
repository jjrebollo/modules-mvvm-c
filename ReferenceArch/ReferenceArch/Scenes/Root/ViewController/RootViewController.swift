//
//  ViewController.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 15/12/2021.
//

import UIKit
import Combine
import BaseModule

class RootViewController: BaseViewController<RootViewModel>, NibableProtocol {
    
//    @IBOutlet weak var goToModuleWithUIButton: UIButton!
    
    let moduleWithUIButtonTouchedSubject = PassthroughSubject<Void, Never>()
    private var cancellableBag = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func configure(viewModel: RootViewModel) {
        moduleWithUIButtonTouchedSubject
            .bind(to: viewModel.moduleWithUIButtonSubject)
            .store(in: &cancellableBag)
    }

    @IBAction func moduleWithUIButtonTouched(_ sender: Any) {
        moduleWithUIButtonTouchedSubject.send()
    }
}

