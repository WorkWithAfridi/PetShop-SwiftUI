//
//  PetShopApp.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI
import SwiftData

@main
struct PetShopApp: App {
    @StateObject var authenticationController = AuthenticationController()
    @StateObject var navigationController = NavigationController()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigationController.path) {
                ContentView()
                    .navigationDestination(for: Route.self, destination: { route in
                        GetView(route: route)
                    })
            }
            .environmentObject(authenticationController)
            .environmentObject(navigationController)
        }
    }
}
