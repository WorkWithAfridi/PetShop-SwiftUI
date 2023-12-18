//
//  MinimizedProductView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI


struct MinimizedProductView: View {
    var product: ProductModel
    var body: some View {
        NavigationLink {
            ProductDetailView()
        } label: {
            ZStack {
                Color("F8F8F8")
                VStack{
                    Color("F8F8F8")
                        .overlay(
                            NetworkImage(imageUrl: product.imageUrl ?? "")
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(10)
                    HStack(alignment: .bottom) {
                        VStack(alignment: .leading) {
                            Text(product.title ?? "404")
                                .lineLimit(1)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundStyle(.black)
                            Text("$\(product.price ?? "404")")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(.black)

                        }
                        Spacer()
                        ZStack {
                            Color(.orange)
                            Image(systemName: "plus")
                                .foregroundStyle(.white)
                        }
                        .frame(width: 35, height: 35)
                        .clipShape(RoundedRectangle(cornerRadius: 35))
                    }
                    .padding(.horizontal, 15)
                    .padding(.bottom, 15)
                }
            }
            .frame(height: 250)
            .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
    }
}

#Preview {
    MinimizedProductView(product: demoProductList.first!)
}
