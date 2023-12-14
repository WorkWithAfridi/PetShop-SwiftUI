//
//  OnboardingController.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import Foundation
import SwiftUI

class OnbordingController: ObservableObject {
    @Published var currentScreen = 0
    
    let onboardingScreens = [
        OnboardingScreenModel(
            title: "Meet your animal needs here",
            description: "Get interesting promos here, register your account immediately so you can meet your animal needs.",
            image:  UIImage(named: "pet_dog")!),
        OnboardingScreenModel(
            title: "Occaecat Lorem cillum eu veniam sit cupidatat.",
            description: "Ex et culpa nisi anim dolor fugiat aute officia do veniam excepteur cupidatat Lorem. Voluptate non labore dolor commodo cupidatat irure eu culpa ad dolore excepteur Lorem. Incididunt in id ipsum veniam duis minim quis magna pariatur ullamco mollit sunt. Ea incididunt occaecat eu tempor quis. Ipsum ad aute cillum cillum mollit ad adipisicing irure exercitation officia. Excepteur reprehenderit nostrud labore ea minim minim labore adipisicing reprehenderit eiusmod.",
            image:  UIImage(named: "pet_cat")!),
        OnboardingScreenModel(
            title: "Occaecat Lorem cillum eu veniam sit cupidatat.",
            description: "Ex et culpa nisi anim dolor fugiat aute officia do veniam excepteur cupidatat Lorem.",
            image:  UIImage(named: "pet_cat_2")!),
    ]
    
}
