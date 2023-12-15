//
//  SelectProfileModeWidget.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI


struct SelectProfileModeWidget: View {
    @EnvironmentObject var profileController : ProfileController
    var body: some View {
        ZStack {
            Color("F8F8F8")
            HStack{
                ZStack {
                    profileController.isProfileMode ? Color(.orange)
                        .clipShape(RoundedRectangle(cornerRadius: 100)) : nil
                    Text("Profile")
                        .fontWeight(.medium)
                        .foregroundColor(profileController.isProfileMode ? .white : Color("898989"))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.vertical, 15)
                }
                .frame(maxWidth: .infinity)
                .onTapGesture {
                    profileController.activateProfileMode()
                }
                ZStack {
                    profileController.isProfileMode ? nil : Color(.orange)
                        .clipShape(RoundedRectangle(cornerRadius: 100))
                    Text("Seller Mode")
                        .fontWeight(.medium)
                        .foregroundColor(profileController.isProfileMode ? Color("898989") : .white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.vertical, 15)
                }
                .frame(maxWidth: .infinity)
                .onTapGesture {
                    profileController.activateSellerMode()
                }
            }
        }
        .frame(height: 45)
        .frame(maxWidth: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 100))
        .padding(.vertical, 10)
    }
}

#Preview {
    SelectProfileModeWidget()
        .environmentObject(ProfileController())
}
