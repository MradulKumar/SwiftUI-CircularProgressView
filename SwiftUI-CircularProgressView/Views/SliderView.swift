//
//  SliderView.swift
//  SwiftUI-CircularProgressView
//
//  Created by Mradul Kumar on 26/09/24.
//

import SwiftUI

struct SliderView: View {
    @Binding var progress: CGFloat
    let title: String
    
    
    var body: some View {
        VStack {
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
            Slider(value: $progress, in: 0...1.0, minimumValueLabel: Text("0"), maximumValueLabel: Text("100%")) {}
        }
    }
}
