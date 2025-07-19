//
//  ContentPresenter.swift
//  Playground
//
//  Created by Marcin Siwak on 17/07/2025.
//

import Foundation

class ContentPresenter: ObservableObject {
    private let interactor: ContentInteractorProtocol
    private let router: ContentRouterProtocol

    @Published var greetingText: String = ""

    init(interactor: ContentInteractorProtocol, router: ContentRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

    func onAppear() {
        let greeting = interactor.fetchGreeting()
        greetingText = greeting.message
    }
}
