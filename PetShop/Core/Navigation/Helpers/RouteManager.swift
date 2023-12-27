//
//  RouteManager.swift
//  PetShop
//
//  Created by Khondakar Afridi on 27/12/23.
//

import Foundation
import SwiftUI

struct GetView: View {
    var route: Route
    var body: some View {
        switch route {
        case .onboarding:
            OnboardingView()
        case .dashboard:
            DashboardView()
        default:
            ContentUnavailableView("404", systemImage: "globe", description: Text("Invalid route! :(").font(.footnote))
        }
    }
}
