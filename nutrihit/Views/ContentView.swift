//
//  ContentView.swift
//  nutrihit
//
//  Created by Dimitri Schrul on 29.11.19.
//  Copyright © 2019 Dimitri Schrul. All rights reserved.
//

import SwiftUI

class GenderInput: ObservableObject {
    @Published var gender: String = ""
}

struct ContentView: View {
    @State private var action: Int? = 0
    @ObservedObject var input = GenderInput()
    
    var body: some View {
        NavigationView {
        VStack(spacing: 0)
            {
                NavigationLink(destination: NutritionView(gender: self.$input.gender), tag: 1, selection: $action) {
                EmptyView()
            }
            Button(action: {
                self.action = 1
                self.input.gender = "male"
                
            }) {
                HStack {
                    Text("Male")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .fixedSize()
                .frame(width: CGFloat(200))
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkBlue"), Color("LightBlue")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(CGFloat(40))
            }
            Spacer()
            .frame(height: CGFloat(20))
            Button(action: {
                self.action = 1
                self.input.gender = "female"
            }) {
                HStack {
                    Text("Female")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .fixedSize()
                .frame(width: CGFloat(200))
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkPink"), Color("LightPink")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(CGFloat(40))
            }
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
