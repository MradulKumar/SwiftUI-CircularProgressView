//
//  CircularProgressBar.swift
//  SwiftUI-CircularProgressView
//
//  Created by Mradul Kumar on 26/09/24.
//

import SwiftUI

struct CircularProgressBar: View {
    @State private var moveProgress: CGFloat = 0.0
    @State private var exerciseProgress: CGFloat = 0.0
    @State private var standProgress: CGFloat = 0.0
    
    
    var body: some View {
        VStack(spacing: 30) {
            
            ZStack {
                ActivityProgressView(color: Color(red: 250 / 255, green: 17 / 255, blue: 79 / 255),
                                     progress: moveProgress)
                .frame(width: 300, height: 300)
                
                ActivityProgressView(color: Color(red: 166 / 255, green: 255 / 255, blue: 0 / 255),
                                     progress: exerciseProgress)
                    .frame(width: 200, height: 200)
                
                ActivityProgressView(color: Color(red: 0 / 255, green: 255 / 255, blue: 246 / 255),
                                     progress: standProgress)
                    .frame(width: 100, height: 100)
            }
            
            VStack {
                SliderView(progress: $moveProgress, title: "Move Progress")
                SliderView(progress: $exerciseProgress, title: "Exercise Progress")
                SliderView(progress: $standProgress, title: "Stand Progress")
            }
            .padding()
            
            Button("Reset all"){
                moveProgress = 0.0
                exerciseProgress = 0.0
                standProgress = 0.0
            }
            .buttonStyle(.bordered)
            .padding()
        }
    }
}
