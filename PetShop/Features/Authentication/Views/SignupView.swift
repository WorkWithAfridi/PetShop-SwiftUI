//
//  SignupView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct SignupView: View {
    @State private var fnameController: String = ""
    @State private var emailController: String = ""
    @State private var passwordController: String = ""
    @State private var agreedToTermsandConditions = false
    var body: some View {
        VStack(alignment: .leading){
            Text("Create New\nAccount")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical, 30)
            Text("Quis tempor aliqua mollit labore laborum officia ex culpa deserunt.")
                .foregroundColor(Color("TextGrey"))
                .padding(.bottom, 20)
            CustomTextField(controller: $fnameController, hintText: "Full Name")
                .padding(.bottom, 15)
            CustomTextField(controller: $emailController, hintText: "Email")
                .padding(.bottom, 15)
            CustomTextField(controller: $passwordController, hintText: "Password")
                .padding(.bottom, 10)
            Toggle(isOn: $agreedToTermsandConditions) {
                Text("I Agree to the Terms of Service and Privacy Policy")
            }
            .toggleStyle(iOSCheckboxToggleStyle())
            .padding()
            
            Spacer()
            PrimaryButton(titleString: "Signin")
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    SignupView()
}
