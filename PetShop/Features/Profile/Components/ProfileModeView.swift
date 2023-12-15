//
//  ProfileModeView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct ProfileModeView: View {
    @EnvironmentObject var profileController: ProfileController
    
    var body: some View {
        ScrollView {
            VStack{
                ZStack{
                    VStack {
                        NetworkImage(imageUrl: "https://images.unsplash.com/photo-1682687220742-aba13b6e50ba?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .shadow(radius: 5)
                        Spacer()
                    }
                    VStack (alignment: .center){
                        Spacer()
                        CircularAvatar(
                            imageUrl: "https://images.unsplash.com/photo-1525186402429-b4ff38bedec6?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", radius: 120)
                    }
                }
                .frame(height: 260)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 15)
                .padding(.top, 5)
                Text("Scarlet Brown Smith")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                ZStack {
                    Color("F8F8F8")
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(profileController.isProfileMode ? Color("898989") : .white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.vertical, 15)
                }
                .frame(maxWidth: 150)
                .frame(height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.bottom, 15)
                LazyVGrid(
                    columns: [
                        GridItem(.flexible(), spacing: 16),
                        GridItem(.flexible(), spacing: 16)
                    ],
                    alignment: .leading, spacing: 15) {
                        ForEach(demoProductList, id: \.id) { product in
                            MinimizedItemView(product: product)
                        }
                    }
                    .padding(.bottom, 30)
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ProfileModeView()
        .environmentObject(ProfileController())
}
