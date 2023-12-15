//
//  SellerModePageEnum.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import Foundation
import SwiftUI

enum SellerModePageEnum {
    case Product
    case Sold
    case Stats
    
    func getView() -> some View {
           switch self {
           case .Product:
               return AnyView(SellerModeProductView())
           case .Sold:
               return AnyView(SellerModeProductView())
           case .Stats:
               return AnyView(Text("Work in progress"))
           }
       }
}
