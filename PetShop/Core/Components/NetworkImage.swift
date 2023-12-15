//
//  NetworkImage.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import SwiftUI

struct NetworkImage: View {
    var imageUrl: String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: imageUrl)){ image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    NetworkImage(imageUrl: "https://images.unsplash.com/photo-1682687220742-aba13b6e50ba?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
}
