//
//  ContentViewModel.swift
//  Playground
//
//  Created by Marcin Siwak on 17/07/2025.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    private let interactor: ContentInteractorProtocol
    private let navigator: Navigator

    @Published var greetingText: String = ""
    
    init(interactor: ContentInteractorProtocol = ContentInteractor(), navigator: Navigator) {
        self.interactor = interactor
        self.navigator = navigator
    }
    
    func onAppear() {
        let greeting = interactor.fetchGreeting()
        greetingText = greeting.message
    }
    
    func onButtonClick() {
        navigator.navigate(to: .secondScreen)
    }
}
