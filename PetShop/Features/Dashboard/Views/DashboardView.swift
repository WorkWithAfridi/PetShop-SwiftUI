//
//  DashboardView.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import SwiftUI

struct DashboardView: View {
    @State private var selectedTabIndex: Int = 0
    @StateObject var profileController: ProfileController = ProfileController()
    var body: some View {
        TabView(selection: $selectedTabIndex){
            HomeView()
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
            ProfileView()
                .environmentObject(profileController)
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
        .onAppear {
            // correct the transparency bug for Tab bars
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            // correct the transparency bug for Navigation bars
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithOpaqueBackground()
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        }
    }
}

#Preview {
    DashboardView()
}
