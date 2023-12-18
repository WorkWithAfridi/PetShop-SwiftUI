//
//  CartView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 18/12/23.
//

import SwiftUI

struct CartView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack{
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
                Text("Cart")
                    .font(.body)
                    .fontWeight(.bold)
                Spacer()
                Color(.white)
                    .frame(width: 40, height: 40)
            }
            .frame(height: 70)
            .frame(maxWidth: .infinity)
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CartView()
}
