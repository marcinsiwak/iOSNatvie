//
//  DIContainer.swift
//  Playground
//
//  Created by Marcin Siwak on 02/08/2025.
//

import Swinject

let container = Container()

container.register(SecondViewModel.self) { r in
    return SecondViewModel(service: service)
}
