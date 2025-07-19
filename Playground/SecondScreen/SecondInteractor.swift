//
//  ContentPresenter.swift
//  Playground
//
//  Created by Marcin Siwak on 17/07/2025.
//

import Foundation

protocol SecondInteractorProtocol {
    func fetchFarawell() -> Greeting
}

class SecondInteractor: SecondInteractorProtocol {
    func fetchFarawell() -> Farewell {
        return Farewell(message: "Bye, world!")
    }
}
