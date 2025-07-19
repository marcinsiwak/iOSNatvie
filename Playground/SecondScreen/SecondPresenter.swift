//
//  ContentPresenter.swift
//  Playground
//
//  Created by Marcin Siwak on 17/07/2025.
//

import Foundation

class SecondPresenter: ObservableObject {
    private let interactor: SecondInteractorProtocol
    private let router: SecondRouterProtocol

    @Published var farawell: String = ""

    init(interactor: SecondInteractorProtocol, router: SecondRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

    func onAppear() {
        let farawell = interactor.fetchFarawell()
        farawell = farawell.message
    }
}
