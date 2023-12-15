//
//  ProfileController.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import Foundation

class ProfileController : ObservableObject {
    @Published var isProfileMode : Bool = false
    @Published var sellerModePage: SellerModePageEnum = SellerModePageEnum.Product
    
    
    func activateProfileMode(){
        isProfileMode = true
    }
    
    func activateSellerMode(){
        isProfileMode = false
    }
}