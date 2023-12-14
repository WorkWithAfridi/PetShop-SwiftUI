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
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView()
            }
            .environmentObject(authenticationController)
        }
    }
}
