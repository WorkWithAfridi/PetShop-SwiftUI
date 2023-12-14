//
//  Item.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/14/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
