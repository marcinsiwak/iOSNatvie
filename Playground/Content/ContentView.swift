//
//  ContentView.swift
//  Playground
//
//  Created by Marcin Siwak on 15/07/2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var presenter: ContentPresenter

    var body: some View {
        NavigationStack {
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(presenter.greetingText)
            }
            .padding()
            .onAppear {
                presenter.onAppear()
            }
            
            NavigationLink("Go to Second", destination: SecondView())
                .padding()
                .buttonStyle(.borderedProminent)
        }
        }
    
}

#Preview {
    let interactor = ContentInteractor()
    let router = ContentRouter()
    let presenter = ContentPresenter(interactor: interactor, router: router)
    ContentView(presenter: presenter)
}
