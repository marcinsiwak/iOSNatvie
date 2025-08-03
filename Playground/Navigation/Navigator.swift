//
//  Navigator.swift
//  Playground
//
//  Created by Marcin Siwak on 02/08/2025.
//

import SwiftUI

enum NavigationDestination: Hashable {
    case content(text: String)
    case secondScreen
}

class Navigator: ObservableObject {
    @Published var navigationPath = NavigationPath()
    
    func navigate(to destination: NavigationDestination) {
        navigationPath.append(destination)
    }
    
    func goBack() {
        if !navigationPath.isEmpty {
            navigationPath.removeLast()
        }
    }
    
    func popToRoot() {
        navigationPath = NavigationPath()
    }
    
    func canGoBack() -> Bool {
        return !navigationPath.isEmpty
    }
}
