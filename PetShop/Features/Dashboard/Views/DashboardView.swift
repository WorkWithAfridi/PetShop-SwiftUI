//
//  DashboardView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct DashboardView: View {
    @State private var selectedTabIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedTabIndex){
            VStack {
                Spacer()
                Text("Home")
                Spacer()
            }
            .tabItem {
                VStack {
                    Image(uiImage: UIImage(named: selectedTabIndex == 0 ?  "home_filled" : "home_outlined")!).accentColor(.orange)
                    Text("Home")
                }
            }
            .tag(0)
            VStack {
                Spacer()
                Text("Favorites")
                Spacer()
            }
            .tabItem {
                VStack {
                    Image(uiImage: UIImage(named: selectedTabIndex == 1 ?  "star_filled" : "star_outlined")!)
                    Text("Favorites")
                }
            }
            .tag(1)
            VStack {
                Spacer()
                Text("Cart")
                Spacer()
            }
            .tabItem {
                VStack {
                    Image(uiImage: UIImage(named: selectedTabIndex == 2 ?  "cart_filled" : "cart_outlined")!)
                    Text("Cart")
                }
            }
            .tag(2)
            VStack {
                Spacer()
                Text("Profile")
                Spacer()
            }
            .tabItem {
                VStack {
                    Image(uiImage: UIImage(named: selectedTabIndex == 3 ?  "profile_filled" : "profile_outlined")!)
                    Text("Person")
                }
            }
            .tag(3)
            MenuView()
            .tabItem {
                VStack {
                    Image(uiImage: UIImage(named: selectedTabIndex == 4 ?  "menu_filled" : "menu_outlined")!)
                    Text("Menu")
                }
            }
            .tag(4)
        }
        .tint(.orange)
    }
}

#Preview {
    DashboardView()
}
