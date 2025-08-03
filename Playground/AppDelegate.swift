//
//  AppDelegate.swift
//  Playground
//
//  Created by Marcin Siwak on 03/08/2025.
//

import Foundation
import SwiftUI

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Initialize DI Container
        _ = DIContainer.shared
        
        return true
    }
}
