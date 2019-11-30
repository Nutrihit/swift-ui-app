//
//  NutriHitView.swift
//  nutrihit
//
//  Created by Dimitri Schrul on 30.11.19.
//  Copyright © 2019 Dimitri Schrul. All rights reserved.
//

import Foundation
import SwiftUI

struct NutriHitView: View {
    @ObservedObject var viewModel = NutriHitViewModel()
    var body: some View {
        HStack {
            Button(action: {
                self.viewModel.load()
            }){
                Text("bra")
            }
                ForEach(self.viewModel.nutriHits, id: \.label) { nutriHit in
                    Text(nutriHit.label)
                }
            
            }.navigationBarTitle(Text("NutriHit"))
        .onAppear {
            self.viewModel.load()
        }
    }
}
