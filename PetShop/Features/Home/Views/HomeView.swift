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
                            .font(.subheadline)
                            .foregroundStyle(.orange)
                    }
                    .padding(.horizontal, 16)
                    HStack{
                        Spacer()
                        Spacer()
                            ZStack {
                                Color("F8F8F8")
                                Image(systemName: "arrow.left.arrow.right")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .padding(.vertical, 15)
                            }
                            .frame(width: 60)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .onTapGesture {}
                        Spacer()
                        ZStack {
                            true ? Color(.orange) : Color("F8F8F8")
                            Text("Food")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(true ? Color(.white) : Color("898989") )
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.vertical, 15)
                        }
                        .frame(width: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .onTapGesture {}
                        Spacer()
                        ZStack {
                            false ? Color(.orange) : Color("F8F8F8")
                            Text("Toys")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(false ? Color(.white) : Color("898989") )
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.vertical, 15)
                        }
                        .frame(width: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .onTapGesture {}
                        Spacer()
                        ZStack {
                            false ? Color(.orange) : Color("F8F8F8")
                            Text("Accessories")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(false ? Color(.white) : Color("898989") )
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.vertical, 15)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .onTapGesture {}
                        Spacer()
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    HStack(alignment: .bottom) {
                        Text("Best Seller")
                            .font(.title2)
                        .fontWeight(.bold)
                        Spacer()
                        Text("View All")
                            .font(.subheadline)
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
