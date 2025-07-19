//
//  PlaygroundApp.swift
//  Playground
//
//  Created by Marcin Siwak on 15/07/2025.
//

import SwiftUI

@main
struct PlaygroundApp: App {
    var body: some Scene {
        WindowGroup {
            let interactor = ContentInteractor()
            let router = ContentRouter()
            let presenter = ContentPresenter(interactor: interactor, router: router)
            ContentView(presenter: presenter)
        }
    }
}
