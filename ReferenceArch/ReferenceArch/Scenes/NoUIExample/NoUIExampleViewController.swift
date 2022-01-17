//
//  NoUIExampleViewController.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 13/01/2022.
//

import UIKit
import Combine
import BaseModule
import NoUIModule

final class NoUIExampleViewController: BaseViewController, NibableProtocol {
    
    struct Constants {
        static let Nib: String = "NoUIExampleViewController"
    }
    
    @IBOutlet weak var bankNameLabel: UILabel!
    
    weak var noUiExampleCoordinator: NoUIExample.Coordinator? = nil
    
    let getBankNameSubject = PassthroughSubject<Void, Never>()
    private var cancellableBag = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getBankNameButtonTouched(_ sender: Any) {
        guard let coordinator = self.noUiExampleCoordinator else { return }

        coordinator.getBankName()
    }
    
    func setNoUiExampleCoordinator(coordinator: NoUIExample.Coordinator) {
        self.noUiExampleCoordinator = coordinator
        setupCoordinator()
    }
    
    private func setupCoordinator() {
        guard let coordinator = self.noUiExampleCoordinator else { return }
        
        coordinator.$bankName
            .assign(to: \.text!, on: bankNameLabel)
            .store(in: &cancellableBag)
        
    }

}
