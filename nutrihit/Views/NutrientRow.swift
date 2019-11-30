//
//  NutrientRow.swift
//  nutrihit
//
//  Created by Dimitri Schrul on 30.11.19.
//  Copyright © 2019 Dimitri Schrul. All rights reserved.
//

import SwiftUI

struct NutrientRow: View {
    var nutrient: MicroNutrient

    var body: some View {
        HStack {
            Text("\(nutrient.label)")
            Spacer()
            Text("\(nutrient.value, specifier: "%.2f") \(nutrient.unit)")
        }
    }
}
