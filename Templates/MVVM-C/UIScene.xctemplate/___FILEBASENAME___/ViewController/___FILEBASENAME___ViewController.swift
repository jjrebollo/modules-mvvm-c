//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
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

