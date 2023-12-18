//
//  SellerModeSoldView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct SellerModeSoldView: View {
    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.flexible(), spacing: 16),
                GridItem(.flexible(), spacing: 16)
            ],
            alignment: .leading, spacing: 15) {
                ForEach(demoProductList, id: \.id) { product in
                    MinimizedProductView(product: product)
                }
            }
            .padding(.bottom, 30)
    }
}

#Preview {
    SellerModeSoldView()
}
