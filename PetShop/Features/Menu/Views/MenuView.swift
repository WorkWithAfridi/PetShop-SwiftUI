//
//  MenuView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var authenticationController : AuthenticationController
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image(uiImage: UIImage(named: "pet_cat_2")!)
                    .resizable()
                    .frame(width: 100, height: 100)
                HStack(alignment: .bottom){
                    
                    Text("PetShop")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("v1.0.0")
                        .font(.title3)
                        .foregroundColor(.orange)
                        .fontWeight(.bold)
                }
                Spacer()
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            Divider()
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Account")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                    MenuListButton(buttonName: "Account", buttonIcon: "person")
                    MenuListButton(buttonName: "Address", buttonIcon: "house")
                    MenuListButton(buttonName: "Notification", buttonIcon: "bell")
                    MenuListButton(buttonName: "Payment Method", buttonIcon: "creditcard")
                    MenuListButton(buttonName: "Privacy", buttonIcon: "lock")
                    MenuListButton(buttonName: "Security", buttonIcon: "shield")
                        .padding(.bottom, 20)
                    Text("Help")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    MenuListButton(buttonName: "Contact Us", buttonIcon: "phone")
                    MenuListButton(buttonName: "FAQ", buttonIcon: "note.text")
                        .padding(.bottom, 20)
                    OutlinedButton(titleString: "Sign Out") {
                        authenticationController.signOutUser()
                    }
                        .padding(.bottom, 30)
                }
                .padding(.horizontal, 16)
            }
            Spacer()
        }
    
    }
}

#Preview {
    MenuView()
}
