//
//  ViewController.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 15/12/2021.
//

import UIKit
import Combine
import BaseModule

final class RootViewController: BaseViewController, NibableProtocol {
    
    struct Constants {
        static let Nib: String = "RootViewController"
    }
    
    let moduleWithUIButtonTouchedSubject = PassthroughSubject<Void, Never>()
    let moduleWithNoUIButtonTouchedSubject = PassthroughSubject<Void, Never>()

    private var cancellableBag = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moduleWithUIButtonTouched(_ sender: Any) {
        moduleWithUIButtonTouchedSubject.send()
    }
    
    @IBAction func moduleWithNoUIButtonTouched(_ sender: Any) {
        moduleWithNoUIButtonTouchedSubject.send()
    }
}
