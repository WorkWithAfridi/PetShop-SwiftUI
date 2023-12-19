//
//  CartView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 18/12/23.
//

import SwiftUI

struct CartView: View {
    var showBackButton: Bool
    var body: some View {
        VStack{
            CartAppBar(showBackButton: showBackButton)
                .padding(.horizontal, 16)
            ZStack {
                ScrollView(showsIndicators: false) {
                    CartItemList()
                }
                VStack {
                    Spacer()
                    CheckoutStatistics()
                }
            }
        }
    }
}

#Preview {
    CartView(showBackButton: false)
}

struct CheckoutStatistics: View {
    var body: some View {
        VStack{
            HStack{
                Text("4 item's")
                Spacer()
                Text("$38.97")
            }
            .padding(.bottom, 2)
            .padding(.horizontal, 24)
            HStack{
                Text("Tax")
                Spacer()
                Text("$1.99")
            }
            .padding(.bottom, 4)
            .padding(.horizontal, 24)
            HStack{
                Text("Total")
                Spacer()
                Text("$41")
                    .foregroundStyle(.orange)
            }
            .font(.title)
            .fontWeight(.bold)
            .padding(.horizontal, 24)
            PrimaryButton(titleString: "Checkout") {}
                .padding(.horizontal, 14)
        }
        .padding(.vertical, 20)
        .background(
            RoundedCorners(color: .white, tl:24, tr: 24, bl: 0, br: 0)
                .ignoresSafeArea()
                .shadow(color: Color("E5E4E3"),radius: 10)
        )
    }
}

struct CartItemList: View {
    var body: some View {
        VStack{
            Color(.white)
                .frame(height: 6)
            ForEach(0..<4, id: \.self){
                index in
                let product : ProductModel = demoProductList[index]
                CartItem(product: product)
            }
            Color(.white)
                .frame(height: 300)
        }
    }
}

struct CartAppBar: View {
    var showBackButton: Bool
    @Environment(\.dismiss) private var dismiss
    var body: some View {
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
            Text("Cart")
                .font(.body)
                .fontWeight(.bold)
            Spacer()
            Color(.white)
                .frame(width: 40, height: 40)
        }
        .frame(height: 70)
        .frame(maxWidth: .infinity)
    }
}

struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height
                
                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}

struct CartItem: View {
    var product: ProductModel
    var body: some View {
        Color(.white)
            .overlay(
                HStack {
                    Color("E5E4E3")
                        .overlay(
                            NetworkImage(imageUrl: product.imageUrl ?? "")
                                .aspectRatio(contentMode: .fill)
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .frame(maxWidth: 100, maxHeight: 100)
                    VStack(alignment: .leading) {
                        Text(product.title ?? "")
                            .font(.body)
                            .fontWeight(.medium)
                            .padding(.top, 6)
                        Text("for 2-3 y/o")
                            .font(.subheadline)
                            .foregroundStyle(Color("898989"))
                        Spacer()
                        Text("$\(product.price ?? "")")
                            .foregroundStyle(.orange)
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top, 6)
                        Spacer()
                    }
                    Spacer()
                }
                    .padding(8)
            )
            .frame(height: 110)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(color: Color("E5E4E3"),radius: 10)
            .padding(.bottom, 10)
            .padding(.horizontal, 16)
    }
}
