//
//  UIMockViewController.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import UIKit
import Combine
import BaseModule

final class UIMockViewController: BaseViewController, NibableProtocol {
    
    struct Constants {
        static let Nib: String = "UIMockViewController"
    }

    private var cancellableBag = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
