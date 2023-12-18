//
//  ProductDetailView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 18/12/23.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var quantity = 1
    @State private var showDetailedDescription = false
    var body: some View {
        
        VStack(alignment: .leading){
            HStack{
                Color(.white)
                    .overlay(
                        Image(systemName: "chevron.backward")
                    )
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(color: Color("E5E4E3") ,radius: 10)
                    .onTapGesture {
                        dismiss()
                    }
                Spacer()
                Text("Product Detail")
                    .font(.body)
                    .fontWeight(.bold)
                Spacer()
                Color(.white)
                    .frame(width: 40, height: 40)
                Color(.white)
                    .overlay(
                        Image(systemName: "heart")
                    )
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(color: Color("E5E4E3") ,radius: 10)
                    .onTapGesture {
                        dismiss()
                    }
            }
            .frame(height: 70)
            .frame(maxWidth: .infinity)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading){
                    NetworkImage(imageUrl: "https://static-01.daraz.com.bd/p/58506cc3ead36d342a248394155ee003.jpg")
                        .frame(height: 300)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .padding(.bottom)
                    HStack{
                        Color("F8F8F8")
                            .frame(width: 150, height: 55)
                            .overlay(
                                HStack{
                                    Spacer()
                                    Text("-")
                                        .onTapGesture {
                                            quantity = quantity - 1
                                        }
                                    Spacer()
                                    Text("\(quantity)")
                                        .font(.body)
                                    Spacer()
                                    Text("+")
                                        .onTapGesture {
                                            quantity = quantity + 1
                                        }
                                    
                                    Spacer()
                                }
                                    .font(.title)
                                
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                        Spacer()
                        Text("$12.99")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    Text("Royal Canin Adult")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)
                    Text("The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.")
                        .font(.body)
                        .fontWeight(.light)
                        .foregroundStyle(Color("898989"))
                        .padding(.bottom)
                    
                    HorizontalDivider()
                        .padding(.bottom)
                    
                    VStack{
                        HStack {
                            Text("Details")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.bottom, 2)
                            Spacer()
                            Image(systemName: showDetailedDescription ? "chevron.up" : "chevron.down")
                        }
                        .onTapGesture {
                            showDetailedDescription.toggle()
                        }
                        showDetailedDescription ? VStack {
                            Text("Enim veniam occaecat excepteur deserunt. Consequat esse anim ad nisi reprehenderit. Tempor reprehenderit duis minim occaecat consectetur pariatur minim elit excepteur cillum duis. Amet dolore qui enim pariatur proident. Consectetur proident nisi laborum sunt incididunt in Lorem. Incididunt ullamco cupidatat mollit proident ullamco amet laborum exercitation. Mollit tempor est sint tempor do occaecat proident officia dolor. In est fugiat sit pariatur nostrud ea commodo eiusmod dolor adipisicing sunt labore laboris. Labore eiusmod est reprehenderit magna amet est ex. Ullamco tempor excepteur nostrud ullamco sint enim enim qui Lorem id ut sunt. Consectetur do quis ea commodo non veniam exercitation. Aliquip ea sint qui officia excepteur ullamco in. Nisi consequat cillum pariatur eu ut.")
                                .font(.body)
                                .fontWeight(.light)
                                .foregroundStyle(Color("898989"))
                                .padding(.bottom, 4)
                                .padding(.top)
                        } : nil
                    }
                    .padding(.bottom)
                    
                    HorizontalDivider()
                        .padding(.bottom)
                    Spacer()
                    
                }
            }
            PrimaryButton(titleString: "Add to Cart") {
            }
        }
        .padding(.horizontal, 16)
        
    }
}

#Preview {
    ProductDetailView()
}
