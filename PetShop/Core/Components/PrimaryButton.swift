//
//  PrimaryButton.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct PrimaryButton: View {
    var titleString : String
    var action: (() -> Void)?
    
    var body: some View {
        ZStack{
            Color.orange
        }
        .frame(height: 60)
        .cornerRadius(120)
        .overlay(content: {
            Text(titleString)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
        })
        .onTapGesture {
            if let safeAction = action {
                safeAction()
            }
        }
    }
}
