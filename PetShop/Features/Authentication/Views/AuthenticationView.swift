//
//  AuthenticationView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct AuthenticationView: View {
    
    @EnvironmentObject var authenticationController: AuthenticationController
    
    var body: some View {
        authenticationController.authPage.getView()
    }
}

#Preview {
    AuthenticationView()
        .environmentObject(AuthenticationController())
}
