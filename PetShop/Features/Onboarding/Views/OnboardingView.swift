//
//  OnboardingView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct OnboardingView: View {
    @Namespace private var animation
    
    @StateObject var onboardingController = OnboardingController()
        
    @EnvironmentObject var authenticationController: AuthenticationController
    
    var body: some View {
        VStack{
            TabView(selection: $onboardingController.currentScreen ){
                ForEach(0..<onboardingController.onboardingScreens.count, id: \.self){
                    index in
                    let screenData = onboardingController.onboardingScreens[index]
                    VStack{
                        HStack {
                            Text(screenData.title)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.horizontal, 24)
                        .padding(.top, 48)
                        Spacer()
                        Image(uiImage: screenData.image)
                        Spacer()
                        Text(screenData.description)
                            .padding(.horizontal, 24)
                            .padding(.bottom, 24)
                            .foregroundColor(Color("TextGrey"))
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            DotsIndicator(numberOfScreens: onboardingController.onboardingScreens.count, currentScreen: onboardingController.currentScreen)
                .padding(.bottom, 24)
            PrimaryButton(titleString: "Get Started"){
                authenticationController.showAuthBottomSheet = true
                authenticationController.showSignupView = false
            }
            .padding(.horizontal, 24)
        }
        .sheet(isPresented: $authenticationController.showAuthBottomSheet) {
            SigninView()
        }
    }
}

#Preview {
    OnboardingView()
        .environmentObject(AuthenticationController())

}
