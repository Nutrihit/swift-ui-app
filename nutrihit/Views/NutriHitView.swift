//
//  NutriHitView.swift
//  nutrihit
//
//  Created by Dimitri Schrul on 30.11.19.
//  Copyright © 2019 Dimitri Schrul. All rights reserved.
//
import SwiftUI

struct NutriHitView: View {
    @ObservedObject var viewModel: NutriHitViewModel = NutriHitViewModel()
    var body: some View {
        HStack {
            Text("test")
            // WTF: works randomly? Sometimes text appears and is gone very fast
            ForEach(self.viewModel.nutriHits, id: \.label) { nutriHit in
                Text(nutriHit.label)
            }
        }
        .navigationBarTitle(Text("NutriHit"))
        .onAppear {
            self.viewModel.load()
        }
    }
}
