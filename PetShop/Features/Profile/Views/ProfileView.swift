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
                .padding(.horizontal, 16)
            ScrollView {
                if profileController.isProfileMode{
                    ProfileModeView()
                } else{
                    VStack{
                        
                            Text("Seller mode view")
                        Color(.orange)
                            .frame(height: 800)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(ProfileController())
}
