//
//  NoUIExampleViewController.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import UIKit
import Combine
import BaseModule

final class NoUIExampleViewController: BaseViewController, NibableProtocol {
    
    struct Constants {
        static let Nib: String = "NoUIExampleViewController"
    }
    
//    let switchColorButtonTouchedSubject = PassthroughSubject<Void, Never>()

    private var cancellableBag = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
