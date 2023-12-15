//
//  ContentView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authenticationController: AuthenticationController
    var body: some View {
        if(authenticationController.isSignedIn){
            DashboardView()
        } else {
            OnboardingView()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthenticationController())
}
