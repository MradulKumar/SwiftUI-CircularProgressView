//
//  ActivityProgressView.swift
//  SwiftUI-CircularProgressView
//
//  Created by Mradul Kumar on 26/09/24.
//

import SwiftUI

struct ActivityProgressView: View {
    let color: Color
    let progress: CGFloat
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 40)
                .opacity(0.1)
                .foregroundStyle(color)
            
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 40, lineCap: .round))
                .foregroundStyle(color)
                .rotationEffect(Angle(degrees: 270))
        }
    }
}
