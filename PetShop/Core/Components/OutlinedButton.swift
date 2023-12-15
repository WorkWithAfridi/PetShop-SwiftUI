//
//  OutlinedButton.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct OutlinedButton: View {
    var titleString: String
    var action: (() -> Void)?

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 120)
                .stroke(Color.orange, lineWidth: 2) // Adjust the line width as needed
                .frame(height: 60)
                .background(Color.clear) // Clear background to make the border visible

            Text(titleString)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.orange) // Set text color to match the border
        }
        .onTapGesture {
            if let safeAction = action {
                safeAction()
            }
        }
    }
}

#Preview {
    OutlinedButton(titleString: "Outlined Button"){}
}
