//
//  NutritionView.swift
//  nutrihit
//
//  Created by Dimitri Schrul on 30.11.19.
//  Copyright © 2019 Dimitri Schrul. All rights reserved.
//

import SwiftUI

struct NutritionView: View {
    @Binding var gender:  String
    @ObservedObject var viewModel: MicroNutrientsViewModel = MicroNutrientsViewModel()
    var body: some View {
        NavigationView {
            VStack {
            Text(gender)
            List {
                ForEach(self.viewModel.micronutrients, id: \.id) { nutrient in
                    NutrientRow(nutrient: nutrient)
                }
            }
        }
        
        
    }.onAppear {
        self.viewModel.load()
    
    }
}
}
