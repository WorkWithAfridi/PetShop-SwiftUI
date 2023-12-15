//
//  MenuListButton.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct MenuListButton: View {
    var buttonName: String
    var buttonIcon: String
    
    var body: some View {
        HStack{
            ZStack(alignment: .center){
                Color("LightGrey")
                Image(systemName: buttonIcon)
//                    .resizable()
//                    .frame(width: 15, height: 15)
            }
            .frame(width: 50, height: 50)
            .cornerRadius(50)
            .padding(.trailing, 3)
            Text(buttonName)
                .font(.body)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    MenuListButton(buttonName: "Account", buttonIcon: "person")
        .padding()
}
