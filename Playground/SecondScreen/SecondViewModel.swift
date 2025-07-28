//
//  SecondViewModel.swift
//  Playground
//
//  Created by Marcin Siwak on 17/07/2025.
//

import Foundation

class SecondViewModel: ObservableObject {
    private let interactor: SecondInteractorProtocol

    @Published var farewell: String = ""

    init(interactor: SecondInteractorProtocol = SecondInteractor()) {
        self.interactor = interactor
    }

    func onAppear() {
        let farewellMessage = interactor.fetchFarewell()
        farewell = farewellMessage.message
    }
}