//
//  CircularAvatar.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct CircularAvatar: View {
    var imageUrl: String
    var radius: Double
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)){ image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }
        .frame(width: radius, height: radius)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 2))
        .shadow(radius: 5)
    }
}
#Preview {
    CircularAvatar(
        imageUrl: "https://images.unsplash.com/photo-1525186402429-b4ff38bedec6?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", radius: 150)
}
