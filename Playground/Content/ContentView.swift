//
//  ContentView.swift
//  Playground
//
//  Created by Marcin Siwak on 15/07/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = DIContainer.shared.resolve(ContentViewModel.self)!
    @StateObject private var navigator = DIContainer.shared.resolve(Navigator.self)!

    var body: some View {
        NavigationStack(path: $navigator.navigationPath) {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(viewModel.greetingText)
                Button("Go to Second Screen") {
                    viewModel.onButtonClick()
                }
            }
            .padding()
            .onAppear {
                viewModel.onAppear()
            }
            .navigationDestination(for: NavigationDestination.self) { destination in
                switch destination {
                case .content(let text):
                    Text("Content: \(text)")
                case .secondScreen:
                    SecondView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
