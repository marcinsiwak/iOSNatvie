//
//  LoginView.swift
//  Playground
//
//  Created by Marcin Siwak on 03/08/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = DIContainer.shared.resolve(LoginViewModel.self)!
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text(viewModel.welcomeMessage)
                .font(.headline)
                .multilineTextAlignment(.center)
            
            VStack(spacing: 15) {
                TextField("Username", text: $viewModel.username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Login") {
                    viewModel.onLoginButtonTapped()
                }
                .buttonStyle(.borderedProminent)
                .disabled(viewModel.username.isEmpty || viewModel.password.isEmpty)
            }
            
            if viewModel.showError {
                Text("Invalid username or password. Password must be at least 3 characters.")
                    .foregroundColor(.red)
                    .font(.caption)
                    .multilineTextAlignment(.center)
            }
            
            if viewModel.isLoginValid {
                Text("Login successful!")
                    .foregroundColor(.green)
                    .font(.caption)
            }
        }
        .padding()
        .onAppear {
            viewModel.onAppear()
        }
    }
}

#Preview {
    LoginView()
}