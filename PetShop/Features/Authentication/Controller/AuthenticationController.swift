//
//  AuthenticationController.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import Foundation
import SwiftUI

class AuthenticationController: ObservableObject {
    @Published var isSignedIn = false
    @Published var showAuthBottomSheet = false
    @Published var showSignupView = true
}
