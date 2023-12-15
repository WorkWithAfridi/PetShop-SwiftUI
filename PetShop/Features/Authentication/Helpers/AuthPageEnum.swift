//
//  AuthPageEnum.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import Foundation
import SwiftUI

enum AuthPageEnum {
    case Signin
    case Signup
    case ForgotPassword
    
    func getView() -> some View {
           switch self {
           case .Signin:
               return AnyView(SigninView())
           case .Signup:
               return AnyView(SignupView())
           case .ForgotPassword:
               return AnyView(ForgotPasswordView())
           }
       }
}
