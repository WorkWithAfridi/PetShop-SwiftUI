//
//  HomeAppbar.swift
//  PetShop
//
//  Created by Khondakar Afridi on 16/12/23.
//

import SwiftUI

struct HomeAppBar: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                HStack {
                    Text("Location")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Image(systemName: "chevron.down")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10, height: 10)
                    Spacer()
                }
                .foregroundStyle(Color("898989"))
                Text("Dhaka, Bangladesh")
                    .font(.body)
                    .fontWeight(.medium)
            }
            Spacer()
            HStack{
                Color(.white)
                    .overlay(
                        Image(systemName: "magnifyingglass")
                    )
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(color: Color("E5E4E3") ,radius: 10)
                Color(.white)
                    .overlay(
                        Image(systemName: "bell")
                    )
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(color: Color("E5E4E3") ,radius: 10)
            }
        }
        .frame(height: 70)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 16)
    }
}

#Preview {
    HomeAppBar()
}
