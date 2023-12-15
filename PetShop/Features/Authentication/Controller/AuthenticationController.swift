//
//  AuthenticationController.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import Foundation
import SwiftUI

class AuthenticationController: ObservableObject {
    @Published var authPage = AuthPageEnum.Signin
    @Published var isSignedIn = false
    @Published var showAuthBottomSheet = false
    
    func signInUser(){
        isSignedIn = true
        showAuthBottomSheet = false
    }
    
    func openForgotPasswordView(){
        authPage = AuthPageEnum.ForgotPassword
    }
    
    func openSigninView(){
        authPage = AuthPageEnum.Signin
    }
    
    func openSignupView(){
        authPage = AuthPageEnum.Signup
    }
    
    func openAuthSheet(){
        showAuthBottomSheet = true
        authPage = AuthPageEnum.Signin
    }
    
}
