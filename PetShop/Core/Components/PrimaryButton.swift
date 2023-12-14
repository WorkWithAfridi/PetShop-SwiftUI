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
    var isDisabled: Bool = false
    
    var body: some View {
        if(isDisabled){
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
        } else {
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
                if isDisabled == false {
                    if let safeAction = action {
                        safeAction()
                    }
                }
            }
        }
    }
}

#Preview {
    PrimaryButton(titleString: "Save"){
        print("Button tapped!")
    }
}
