//
//  DIContainer.swift
//  Playground
//
//  Created by Marcin Siwak on 02/08/2025.
//

import Swinject

class DIContainer {
    static let shared = DIContainer()
    let container = Container()
    
    private init() {
        registerDependencies()
    }
    
    private func registerDependencies() {
        // Content dependencies
        container.register(ContentViewModel.self) { r in
            return ContentViewModel(
                interactor: r.resolve(ContentInteractorProtocol.self)!,
                navigator: r.resolve(Navigator.self)!
            )
        }
        
        container.register(ContentInteractorProtocol.self) { _ in
            return ContentInteractor()
        }
        
        container.register(Navigator.self) { _ in Navigator() }
            .inObjectScope(.container)
        
        // Second screen dependencies
        container.register(SecondViewModel.self) { r in
            return SecondViewModel(interactor: r.resolve(SecondInteractorProtocol.self)!)
        }
        
        container.register(SecondInteractorProtocol.self) { _ in
            return SecondInteractor()
        }
        
        // Login dependencies
        container.register(LoginViewModel.self) { r in
            return LoginViewModel(interactor: r.resolve(LoginInteractorProtocol.self)!)
        }
        
        container.register(LoginInteractorProtocol.self) { _ in
            return LoginInteractor()
        }
    }
    
    func resolve<T>(_ type: T.Type) -> T? {
        return container.resolve(type)
    }
}
