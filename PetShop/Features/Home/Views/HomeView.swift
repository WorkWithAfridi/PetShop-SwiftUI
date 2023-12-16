//
//  HomeView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 16/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HomeAppBar()
            ScrollView {
                VStack{
                    HomeBanner()
                    HStack(alignment: .bottom) {
                        Text("Category")
                            .font(.title2)
                        .fontWeight(.bold)
                        Spacer()
                        Text("View All")
                            .font(.body)
                            .foregroundStyle(.orange)
                    }
                    .padding(.horizontal, 16)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}


struct HomeBanner: View {
    var body: some View {
        ZStack {
            Image("background_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .padding(.horizontal, 16)
            HStack(alignment: .center) {
                Image("royal_pet_food")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .padding(.leading, -50)
                    .padding(.trailing, -20)
                VStack(alignment: .leading) {
                    Text("Royal CaninAdult Pomeraniann")
                        .font(.body)
                        .fontWeight(.bold)
                    Text("Get an interesting promo here, without conditions")
                        .font(.subheadline)
                        .fontWeight(.regular)
                }
                .frame(maxWidth: 150)
                .foregroundStyle(.white)
            }
        }
        .padding(.bottom, -10)
    }
}
