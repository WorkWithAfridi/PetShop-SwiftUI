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
                        NetworkImage(imageUrl: "https://marketplace.canva.com/EAFHyNmJynw/1/0/1600w/canva-white-pet-shop-facebook-cover-2jWh0zUk8_0.jpg")
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                        Spacer()
                    }
                    VStack (alignment: .center){
                        Spacer()
                        CircularAvatar(
                            imageUrl: "https://scalebranding.com/wp-content/uploads/2022/02/eco-bird-food-logo.jpg", radius: 120)
                    }
                }
                .frame(height: 260)
                .frame(maxWidth: .infinity)
                .padding(.top, 5)
                Text("Scars Goodies")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                    .padding(.top, 15)
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
