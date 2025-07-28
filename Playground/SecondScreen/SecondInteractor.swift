//
//  ContentPresenter.swift
//  Playground
//
//  Created by Marcin Siwak on 17/07/2025.
//

import Foundation

protocol SecondInteractorProtocol {
    func fetchFarewell() -> Farewell
}

class SecondInteractor: SecondInteractorProtocol {
    func fetchFarewell() -> Farewell {
        return Farewell(message: "Bye, world!")
    }
}
