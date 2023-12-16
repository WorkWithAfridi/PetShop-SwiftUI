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
            ScrollView (showsIndicators: false){
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
                            .frame(width: 60, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .onTapGesture {}
                        Spacer()
                        HomeCategoryItem(isActive: true, title: "Food"){}
                        Spacer()
                        HomeCategoryItem(isActive: false, title: "Toys"){}
                        Spacer()
                        HomeCategoryItem(isActive: false, title: "Accessories"){}
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
                    LazyVGrid(
                        columns: [
                            GridItem(.flexible(), spacing: 16),
                            GridItem(.flexible(), spacing: 16)
                        ],
                        alignment: .leading, spacing: 15) {
                            ForEach(0..<4, id: \.self) { index in
                                let product: ProductModel = demoProductList[index]
                                MinimizedItemView(product: product)
                            }
                        }
                        .padding(.bottom, 30)
                        .padding(.horizontal, 16)
                    HStack(alignment: .bottom) {
                        Text("🔥 Trending Today")
                            .font(.title2)
                        .fontWeight(.bold)
                        Spacer()
                        Text("View All")
                            .font(.subheadline)
                            .foregroundStyle(.orange)
                    }
                    .padding(.horizontal, 16)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(0..<6) { index in
                                let product: ProductModel = demoProductList[index]
                                MinimizedItemView(product: product)
                            }
                        }
                        .padding()
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

struct ItemView: View {
    var index: Int

    var body: some View {
        Text("Item \(index)")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
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
