//
//  Item.swift
//  FoodDeliveryApp
//
//  Created by User on 23/01/24.
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
