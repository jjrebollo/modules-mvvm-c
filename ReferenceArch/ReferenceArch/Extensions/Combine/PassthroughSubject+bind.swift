//
//  PassthroughSubject+bind.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 10/01/2022.
//

import Combine

extension PassthroughSubject {
    func bind(to publisher: PassthroughSubject) -> AnyCancellable {
        
        return self.sink { error in
            return
        } receiveValue: { output in
            publisher.send(output)
        }
    }
}
