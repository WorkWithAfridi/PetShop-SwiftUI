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
    var action: (() -> Void)?
    
    var body: some View {
        HStack{
            ZStack(alignment: .center){
                Color("LightGrey")
                Image(uiImage: UIImage(named: buttonIcon)!)
            }
            .frame(width: 50, height: 50)
            .cornerRadius(50)
            .padding(.trailing, 3)
            Text(buttonName)
                .font(.body)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .onTapGesture {
            if let safeAction = action{
                safeAction()
            }
        }
    }
}
