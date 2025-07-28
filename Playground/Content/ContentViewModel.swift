//
//  ContentViewModel.swift
//  Playground
//
//  Created by Marcin Siwak on 17/07/2025.
//

import Foundation

class ContentViewModel: ObservableObject {
    private let interactor: ContentInteractorProtocol
    
    @Published var greetingText: String = ""
    
    init(interactor: ContentInteractorProtocol = ContentInteractor()) {
        self.interactor = interactor
    }
    
    func onAppear() {
        let greeting = interactor.fetchGreeting()
        greetingText = greeting.message
    }
}
