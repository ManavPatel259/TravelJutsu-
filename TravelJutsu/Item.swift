//
//  Item.swift
//  TravelJutsu
//
//  Created by Jenish Vaghela on 2024-03-21.
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