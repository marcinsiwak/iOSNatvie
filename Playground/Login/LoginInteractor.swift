//
//  LoginInteractor.swift
//  Playground
//
//  Created by Marcin Siwak on 03/08/2025.
//

import Foundation

protocol LoginInteractorProtocol {
    func validateLogin(username: String, password: String) -> Bool
    func getWelcomeMessage() -> String
}

class LoginInteractor: LoginInteractorProtocol {
    func validateLogin(username: String, password: String) -> Bool {
        // Simple validation for demo purposes
        return !username.isEmpty && password.count >= 3
    }
    
    func getWelcomeMessage() -> String {
        return "Welcome! Please log in to continue."
    }
}