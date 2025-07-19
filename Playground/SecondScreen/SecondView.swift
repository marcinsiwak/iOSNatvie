//
//  ContentView.swift
//  Playground
//
//  Created by Marcin Siwak on 15/07/2025.
//

import SwiftUI

struct SecondView: View {
    @ObservedObject var presenter: SecondPresenter

    var body: some View {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(presenter.farawell)
            }
            .padding()
            .onAppear {
                presenter.onAppear()
            }
    }
    
}

#Preview {
    let interactor = SecondInteractor()
    let router = SecondRouter()
    let presenter = SecondPresenter(interactor: interactor, router: router)
    SecondView(presenter: presenter)
}
