//
//  CustomAwardView.swift
//  AwardsCollectionApp
//
//  Created by Roman Golubinko on 28.12.2022.
//

import SwiftUI

struct CustomAwardView: View {
    
    @Binding var cloverIsExpanded: Bool
    
    var color1: Color
    var color2: Color
    var strokeColor: Color
    var strokeWidth: Double
    var shadowColor: Color
    var shadowRadius: CGFloat
    
    var body: some View {
        ZStack {
            CloverView(
                color1: color1,
                color2: color2,
                rotation: 0,
                strokeColor: strokeColor,
                strokeWidth: strokeWidth,
                shadowColor: shadowColor,
                shadowRadius: shadowRadius
            )
            
            CloverView(
                color1: color1,
                color2: color2,
                rotation: cloverIsExpanded ? 90 : 0,
                strokeColor: strokeColor,
                strokeWidth: strokeWidth,
                shadowColor: shadowColor,
                shadowRadius: shadowRadius
            )
            
            CloverView(
                color1: color1,
                color2: color2,
                rotation: cloverIsExpanded ? 180 : 0,
                strokeColor: strokeColor,
                strokeWidth: strokeWidth,
                shadowColor: shadowColor,
                shadowRadius: shadowRadius
            )
            
            CloverView(
                color1: color1,
                color2: color2,
                rotation: cloverIsExpanded ? 270 : 0,
                strokeColor: strokeColor,
                strokeWidth: strokeWidth,
                shadowColor: shadowColor,
                shadowRadius: shadowRadius
            )
        }
        
        .animation(.interpolatingSpring(stiffness: 100, damping: 10)
            .delay(0.1)
            .speed(0.5),
                   value: cloverIsExpanded)
    }
}

struct CloverView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAwardView(cloverIsExpanded: .constant(true), color1: .green, color2: .gray, strokeColor: .white, strokeWidth: 0.5, shadowColor: .green, shadowRadius: 30)
            .frame(width: 300, height: 300)
    }
}
