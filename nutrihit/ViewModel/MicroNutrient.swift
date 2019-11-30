//
//  MicroNutrient.swift
//  nutrihit
//
//  Created by Dimitri Schrul on 30.11.19.
//  Copyright © 2019 Dimitri Schrul. All rights reserved.
//

public class MicroNutrient: Codable, Identifiable {
    public let id: Int?
    public let label: String
    public let value: Float
    public let unit: String
    
    public init(id: Int, label: String, value: Float, unit: String) {
        self.id = id
        self.label = label
        self.value = value
        self.unit = unit
    }
}

public typealias MicroNutrients = [MicroNutrient]
