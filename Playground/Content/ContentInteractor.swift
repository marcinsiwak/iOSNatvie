//
//  ContentPresenter.swift
//  Playground
//
//  Created by Marcin Siwak on 17/07/2025.
//

import Foundation

protocol ContentInteractorProtocol {
    func fetchGreeting() -> Greeting
}

class ContentInteractor: ContentInteractorProtocol {
    func fetchGreeting() -> Greeting {
        return Greeting(message: "Hi, world!")
    }
}
