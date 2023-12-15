//
//  ForgotPasswordView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var emailController: String = ""
    @EnvironmentObject var authenticationController : AuthenticationController
    var body: some View {
        VStack(alignment: .leading){
            Text("Forgot\nPassword?!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical, 30)
            Text("Quis tempor aliqua mollit labore laborum officia ex culpa deserunt.")
                .foregroundColor(Color("TextGrey"))
                .padding(.bottom, 20)
            CustomTextField(controller: $emailController, hintText: "Email")
                .padding(.bottom, 15)
            Spacer()
            HStack{
                Spacer()
                Text("Have an account?")
                Text("Signin")
                    .fontWeight(.bold)
                    .foregroundColor(Color(.orange))
                    .onTapGesture {
                        authenticationController.openSigninView()
                    }
                Spacer()
            }
            .font(.subheadline)
            .padding(.bottom, 24)
            PrimaryButton(titleString: "Reset Password")
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    ForgotPasswordView()
        .environmentObject(AuthenticationController())

}
