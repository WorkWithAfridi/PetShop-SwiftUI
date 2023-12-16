//
//  CustomTextField.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var controller : String
    @State private var editing = false
    
    var hintText : String
    var body: some View {
        TextField(hintText, text: $controller, onEditingChanged: { edit in
            self.editing = edit
        })
        .textFieldStyle(CustomTextFieldStyle(focused: $editing))
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    @Binding var focused: Bool
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(focused ? .orange : Color("E5E4E3"), lineWidth: 2)
            )
    }
}
