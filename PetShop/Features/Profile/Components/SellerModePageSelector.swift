//
//  SellerModePageSelector.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI


struct SellerModePageSelector: View {
    @EnvironmentObject var profileController: ProfileController
    var mode: SellerModePageEnum
    var title: String
    var body: some View {
        ZStack {
            profileController.sellerModePage == mode ? Color(.orange) : Color("F8F8F8")
            Text(title)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(profileController.sellerModePage == mode ? Color(.white) : Color("898989") )
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.vertical, 15)
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .onTapGesture {
            profileController.sellerModePage = mode
        }
    }
}

#Preview {
    SellerModePageSelector(mode: SellerModePageEnum.Product, title: "Product")
        .environmentObject(ProfileController())
}
