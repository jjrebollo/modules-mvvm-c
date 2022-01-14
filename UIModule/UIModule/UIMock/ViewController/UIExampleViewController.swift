//
//  UIMockViewController.swift
//  UIModule
//
//  Created by Juan Jose Rebollo on 11/01/2022.
//

import UIKit
import Combine
import BaseModule

final public class UIExampleViewController: BaseViewController, NibableProtocol {
    
    struct Constants {
        static let Nib: String = "UIExampleViewController"
    }

    private var cancellableBag = Set<AnyCancellable>()

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
