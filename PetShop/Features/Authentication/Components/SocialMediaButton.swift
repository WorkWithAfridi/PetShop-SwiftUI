//
//  SocialMediaButton.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct SocialMediaButton: View {
    var title: String
    var buttonColor: Color
    var textColor: Color
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .foregroundColor(textColor)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.vertical, 15)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(buttonColor, lineWidth: 2)
            )
    }
}

#Preview {
    SocialMediaButton(
        title: "Google", buttonColor: Color(.blue), textColor: Color(.blue))
}
