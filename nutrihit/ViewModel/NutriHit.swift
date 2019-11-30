//
//  NutriHit.swift
//  nutrihit
//
//  Created by Dimitri Schrul on 30.11.19.
//  Copyright © 2019 Dimitri Schrul. All rights reserved.
//

import Foundation

public class NutriHit: Codable, Identifiable {
    public let label: String
    public let foods: Foods
    public let microNutrientsSummary: MicroNutrients
    
    public init(label: String, foods: Foods, microNutrientsSummary: MicroNutrients) {
        self.label = label
        self.foods = foods
        self.microNutrientsSummary = microNutrientsSummary
    }
}

public typealias NutriHits = [NutriHit]
