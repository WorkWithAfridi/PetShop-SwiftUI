//
//  PrimaryButton.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct PrimaryButton: View {
    var titleString : String
    var body: some View {
        ZStack{
            Color.orange
        }
        .frame(height: 60)
        .cornerRadius(120)
        .overlay(content: {
            Text("Get Started")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
        })
    }
}

#Preview {
    PrimaryButton(titleString: "Save")
}
