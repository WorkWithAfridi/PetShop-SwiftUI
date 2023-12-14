//
//  DotIndicator.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct DotsIndicator: View {
    var numberOfScreens: Int
    var currentScreen: Int
    var body: some View {
        HStack{
            ForEach(0..<numberOfScreens, id: \.self){
                index in
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(index == currentScreen  ? Color(.orange) : Color("LightGrey") )
                    .padding(.horizontal, 4)
            }
        }
    }
}

#Preview {
    DotsIndicator(
        numberOfScreens: 4, currentScreen: 2)
}
