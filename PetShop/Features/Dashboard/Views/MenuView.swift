//
//  MenuView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image(uiImage: UIImage(named: "pet_cat_2")!)
                    .resizable()
                    .frame(width: 100, height: 100)
                HStack(alignment: .bottom){
                    
                Text("PetShop")
                    .font(.title)
                Text("v1.0.0")
                    .font(.title3)
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
                }
                Spacer()
            }
            .padding(.horizontal, 12)
            .padding(.bottom, 10)
            VStack(alignment: .leading) {
                Text("Account")
                    .font(.title3)
                    .fontWeight(.bold)
                MenuListButton(buttonName: "Account", buttonIcon: "profile_outlined"){}
            }
            .padding(.horizontal, 24)
            Spacer()
        }
    }
}

#Preview {
    MenuView()
}
