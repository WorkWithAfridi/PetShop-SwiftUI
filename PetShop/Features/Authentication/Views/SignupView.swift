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
    
    @EnvironmentObject var authenticationController: AuthenticationController
    
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
                .padding(.bottom, 20)
            HStack (alignment: .top) {
                Image(systemName: agreedToTermsandConditions ? "checkmark.square" : "square")
                    .font(Font.title3.weight(agreedToTermsandConditions ? .semibold : .light))
                    .foregroundColor( agreedToTermsandConditions ? .orange : Color("TextGrey"))
                Text("I Agree to the ")
                    .foregroundColor(Color("TextGrey"))
                + Text("Terms of Service")
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
                + Text(" and ")
                    .foregroundColor(Color("TextGrey"))
                + Text("Privacy Policy")
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
                + Text(".")
                    .foregroundColor(Color("TextGrey"))
            }
            .onTapGesture {
                agreedToTermsandConditions.toggle()
            }
            Spacer()
            HStack{
                Spacer()
                Text("Have an account?")
                Text("Signin")
                    .fontWeight(.bold)
                    .foregroundColor(Color(.orange))
                    .onTapGesture {
                        authenticationController.showSignupView = false
                    }
                Spacer()
            }
            .font(.subheadline)
            .padding(.bottom, 24)
            PrimaryButton(titleString: "Create account"){
                authenticationController.isSignedIn = true
                authenticationController.showAuthBottomSheet = false
            }
        }
        .padding(.horizontal, 24)
    }
}


#Preview {
    SignupView()
        .environmentObject(AuthenticationController())

}
