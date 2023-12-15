//
//  CustomTextField.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var controller : String
    var hintText : String
    var body: some View {
        TextField(hintText, text: $controller)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(controller.count > 0 ? .orange : Color("E5E4E3"), lineWidth: 2)
            )
    }
}
