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
    var body: some View {
        VStack(alignment: .leading){
            Spacer()
            Text("Hello,\nWelcome Back!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical, 10)
            Text("Quis tempor aliqua mollit labore laborum officia ex culpa deserunt.")
                .foregroundColor(Color("TextGrey"))
                .padding(.bottom, 40)
            CustomTextField(controller: $emailController, hintText: "Email")
                .padding(.bottom, 15)
            CustomTextField(controller: $passwordController, hintText: "Password")
                .padding(.bottom, 15)
            HStack(alignment: .center){
                HorizontalDivider()
                Text("or")
                    .padding(.horizontal)
                HorizontalDivider()
            }
            .padding(.bottom, 15)
            
            Spacer()
            HStack{
                Spacer()
                Text("Don't have an account?")
                Text("Create Account")
                    .fontWeight(.bold)
                    .foregroundColor(Color(.orange))
                Spacer()
            }
            .font(.subheadline)
            .padding(.bottom, 24)
            PrimaryButton(titleString: "Get Started")
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    SigninView()
}
