//
//  ContentView.swift
//  Playground
//
//  Created by Marcin Siwak on 15/07/2025.
//

import SwiftUI

struct SecondView: View {
    @StateObject private var viewModel = SecondViewModel()

    var body: some View {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(viewModel.farewell)
            }
            .padding()
            .onAppear {
                viewModel.onAppear()
            }
    }
    
}

#Preview {
    SecondView()
}
