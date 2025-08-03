//
//  LoginViewModel.swift
//  Playground
//
//  Created by Marcin Siwak on 03/08/2025.
//

import Foundation

class LoginViewModel: ObservableObject {
    private let interactor: LoginInteractorProtocol
    
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var welcomeMessage: String = ""
    @Published var isLoginValid: Bool = false
    @Published var showError: Bool = false
    
    init(interactor: LoginInteractorProtocol = LoginInteractor()) {
        self.interactor = interactor
    }
    
    func onAppear() {
        welcomeMessage = interactor.getWelcomeMessage()
    }
    
    func onLoginButtonTapped() {
        if interactor.validateLogin(username: username, password: password) {
            isLoginValid = true
            showError = false
            // Here you could navigate to next screen or perform login action
        } else {
            isLoginValid = false
            showError = true
        }
    }
    
    func resetForm() {
        username = ""
        password = ""
        isLoginValid = false
        showError = false
    }
}