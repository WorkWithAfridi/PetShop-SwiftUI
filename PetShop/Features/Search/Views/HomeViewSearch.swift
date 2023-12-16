//
//  HomeViewSearch.swift
//  PetShop
//
//  Created by Khondakar Afridi on 16/12/23.
//

import SwiftUI

struct HomeViewSearch: View {
    @Environment(\.dismiss) private var dismiss
    @State private var searchController: String = ""
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Color(.white)
                    .overlay(
                        Image(systemName: "chevron.backward")
                    )
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(color: Color("E5E4E3") ,radius: 10)
                    .onTapGesture {
                        dismiss()
                    }
                Spacer()
                Text("Search")
                    .font(.body)
                    .fontWeight(.bold)
                Spacer()
                Color(.white)
                    .frame(width: 40, height: 40)
            }
            .frame(height: 70)
            .frame(maxWidth: .infinity)
            CustomTextField(controller: $searchController, hintText: "Search your Product")
                .padding(.bottom, 12)
            HStack{
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
            }
            .padding(.bottom, 12)
            Text("Recent")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 0)
            ForEach(0..<4, id: \.self){
                index in
                HStack {
                    Text("Royal Canin Persian 500g")
                    .padding(.vertical, 2)
                    Spacer()
                    Image(systemName: "xmark.app")
                }
                .font(.body)
                .fontWeight(.medium)
                .foregroundStyle(Color("E5E4E3"))
            }
            .padding(.top, 2)
            Spacer()
        }
        .padding(.horizontal, 16)
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        //        .navigationBarBackButtonHidden(true)
        //        .navigationTitle("Search")
        //        .navigationBarTitleDisplayMode(.inline)
        //        .navigationBarBackButtonHidden(true)
        //        .toolbar {
        //            ToolbarItem(placement: .navigationBarLeading) {
        //                Button {
        //                    dismiss()
        //                } label: {
        //                    Color(.white)
        //                        .overlay(
        //                            Image(systemName: "chevron.backward")
        //                        )
        //                        .frame(width: 40, height: 40)
        //                        .clipShape(RoundedRectangle(cornerRadius: 14))
        //                        .shadow(color: Color("E5E4E3") ,radius: 10)
        //                }
        //            }
        //            ToolbarItemGroup(placement: .navigationBarTrailing) {
        //                Button(action: {
        //                }) {
        //                    Image(systemName: "plus")
        //                }
        //                Button(action: {
        //                }) {
        //                    Image(systemName: "ellipsis")
        //                }
        //            }
        //        }
    }
}

#Preview {
    HomeViewSearch()
}
