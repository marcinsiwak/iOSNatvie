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
        NavigationStack {
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(viewModel.greetingText)
            }
            .padding()
            .onAppear {
                viewModel.onAppear()
            }
            
            NavigationLink("Go to Second", destination: SecondView())
                .padding()
                .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
