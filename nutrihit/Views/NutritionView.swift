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
    @State private var action: Int? = 0
    @ObservedObject var viewModel: MicroNutrientsViewModel = MicroNutrientsViewModel()
    var body: some View {
        VStack {
            NavigationLink(destination: NutriHitView(), tag: 1, selection: $action) {
                EmptyView()
            }
            List {
                ForEach(self.viewModel.micronutrients, id: \.id) { nutrient in
                    NutrientRow(nutrient: nutrient)
                }
            }
            
            Button(action: {
                self.action = 1
            }) {
                HStack {
                    Text("Generate")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .fixedSize()
                .frame(width: CGFloat(200))
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(CGFloat(40))
            }
            
            
        }
        .navigationBarTitle(Text(gender))
        .onAppear {
            self.viewModel.load()
        }
        
    }
}
