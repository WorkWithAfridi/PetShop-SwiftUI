//
//  SellerModeView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI


struct SellerModeView: View {
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
                .padding(.top, 5)
                Text("Scarlet Brown Smith")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                HStack{
                    Spacer()
                    VStack{
                        Text("109")
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("Followers")
                            .font(.body)
                            .fontWeight(.light)
                    }
                    Spacer()
                    VStack{
                        Text("992")
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("Following")
                            .font(.body)
                            .fontWeight(.light)
                    }
                    Spacer()
                    VStack{
                        Text("80")
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("Sales")
                            .font(.body)
                            .fontWeight(.light)
                    }
                    Spacer()
                }
                .frame(height: 45)
                .padding(.top, 10)
                .padding(.horizontal, 40)
                
                HStack{
                    SellerModePageSelector(
                    mode: SellerModePageEnum.Product, title: "Product")
                    SellerModePageSelector(
                    mode: SellerModePageEnum.Sold, title: "Sold")
                    SellerModePageSelector(
                    mode: SellerModePageEnum.Stats, title: "Stats")
                }
                .frame(height: 45)
                .padding(.vertical, 20)
                .padding(.horizontal, 40)
                profileController.sellerModePage.getView()
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    SellerModeView()
        .environmentObject(ProfileController())
}
