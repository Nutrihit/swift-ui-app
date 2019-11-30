//
//  Food.swift
//  nutrihit
//
//  Created by Dimitri Schrul on 30.11.19.
//  Copyright © 2019 Dimitri Schrul. All rights reserved.
//

import Foundation

public class Food: Codable, Identifiable {
    public let label: String
    public let key: String
    public let microNutrients: MicroNutrients
    
    public init(label: String, key: String, microNutrients: MicroNutrients) {
        self.label = label
        self.key = key
        self.microNutrients = microNutrients
    }
}

public typealias Foods = [Food]
