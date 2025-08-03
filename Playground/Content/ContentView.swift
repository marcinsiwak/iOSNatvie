//
//  ContentView.swift
//  Playground
//
//  Created by Marcin Siwak on 15/07/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationStack(path: $navigator.navigationPath) {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(viewModel.greetingText)
                Button("Go to Second Screen") {
                    viewModel.navigate(to: .secondScreen)
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
