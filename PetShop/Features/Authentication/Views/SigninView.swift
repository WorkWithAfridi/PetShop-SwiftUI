//
//  SigninView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct SigninView: View {
    @State private var emailController: String = ""
    @State private var passwordController: String = ""
    
    @EnvironmentObject var authenticationController: AuthenticationController
    
    var body: some View {
        VStack(alignment: .leading){
            Spacer()
            Text("Hello,\nWelcome Back!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical, 10)
            Text("Quis tempor aliqua mollit labore laborum officia ex culpa deserunt.")
                .foregroundColor(Color("898989"))
                .padding(.bottom, 40)
            CustomTextField(controller: $emailController, hintText: "Email")
                .padding(.bottom, 15)
            CustomTextField(controller: $passwordController, hintText: "Password")
                .padding(.bottom, 10)
            HStack {
                Spacer()
                Text("Forgot Password?")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(.orange).padding(.bottom, 15)
                    .onTapGesture {
                        authenticationController.openForgotPasswordView()
                    }
            }
            HStack(alignment: .center){
                HorizontalDivider()
                Text("or")
                    .padding(.horizontal)
                HorizontalDivider()
            }
            .padding(.bottom, 15)
            HStack{
                SocialMediaButton(title: "Google", buttonColor: Color("E5E4E3"), textColor: Color(.red))
                    .padding(.trailing, 5)
                SocialMediaButton(title: "Facebook", buttonColor: Color("E5E4E3"), textColor: Color(.blue))
                    .padding(.leading, 5)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            Spacer()
            Spacer()
            HStack{
                Spacer()
                Text("Don't have an account?")
                Text("Create Account")
                    .fontWeight(.bold)
                    .foregroundColor(Color(.orange))
                    .onTapGesture {
                        authenticationController.openSignupView()
                    }
                Spacer()
            }
            .font(.subheadline)
            .padding(.bottom, 24)
            PrimaryButton(titleString: "Signin"){
                authenticationController.signInUser()
            }
            
        }
        .padding(.horizontal, 24)
    }
}


#Preview {
    SigninView()
        .environmentObject(AuthenticationController())
}
