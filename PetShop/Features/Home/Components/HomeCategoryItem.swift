//
//  HomeCategoryItem.swift
//  PetShop
//
//  Created by Khondakar Afridi on 16/12/23.
//

import SwiftUI

struct HomeCategoryItem: View {
    var isActive : Bool
    var title : String
    var action: (()->Void)?
    var body: some View {
        ZStack {
            isActive ? Color(.orange) : Color("F8F8F8")
            Text(title)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color(.white) : Color("898989") )
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.vertical, 15)
                .padding(.horizontal, 20)
        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .onTapGesture {
            if let safeAction = action {
                safeAction()
            }
        }
    }
}

#Preview {
    HomeCategoryItem(isActive: false, title: "Nachos")
}
