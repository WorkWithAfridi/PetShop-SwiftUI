//
//  ProfileView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var profileController : ProfileController
    var body: some View {
        VStack{
            SelectProfileModeWidget()
                .padding(.horizontal, 60)
            ScrollView(showsIndicators: false) {
                if profileController.isProfileMode{
                    ProfileModeView()
                } else{
                    SellerModeView()
                }
            }
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(ProfileController())
}
