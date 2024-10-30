//
//  SquareBasedPyramidView.swift
//  MyGeometricFigures
//
//  Created by Neil Shah on 2024-10-29.
//

import SwiftUI

struct SquareBasedPyramidView: View {
    
    //MARK: Stored Properties
    @State var currentSquareBasedPyramid = SquareBasedPyramid(
        height: 10,
        baseLength: 5
    )
    
    //MARK: Computed Properties
    var body: some View {
        VStack {
            
            //Add Image
            Image("SquareBasedPyramidDiagram")
                .resizable()
                .scaledToFit()
            
            //HEIGHT SLIDER
            
            //Label and current value
            Text("Height (h): \(currentSquareBasedPyramid.height.formatted())")
                .font(.system(.title2, design: .rounded).weight(.bold))
            
            //Slider control
            Slider(
                value: $currentSquareBasedPyramid.height,
                in: 1...100,
                step: 1.0
            )
            
            Spacer()
            
            //BASE LENGTH SLIDER
            
            //Label and current value
            Text("Base Length (b): \(currentSquareBasedPyramid.baseLength.formatted())")
                .font(.system(.title2, design: .rounded).weight(.bold))
            
            //Slider control
            Slider(
                value: $currentSquareBasedPyramid.baseLength,
                in: 1...100,
                step: 1.0
            )
            
            Spacer()
            
            //OUTPUT
            Text("Surface Area: \(currentSquareBasedPyramid.surfaceArea)")
                .font(.system(.title3, design: .rounded).weight(.bold))
                .frame(width: 300, height: 1, alignment: .topLeading)
            Spacer()
            
            Text("Volume: \(currentSquareBasedPyramid.volume)")
                .font(.system(.title3, design: .rounded).weight(.bold))
                .frame(width: 300, height: 1, alignment: .topLeading)
            Spacer()
            Spacer()
            
            Text("Base Area: \(currentSquareBasedPyramid.baseArea)")
                .font(.system(.headline, design: .rounded))
                .frame(width: 300, height: 1, alignment: .topLeading)
            Spacer()
            
            Text("Triangle Area: \(currentSquareBasedPyramid.triangleArea)")
                .font(.system(.headline, design: .rounded))
                .frame(width: 300, height: 1, alignment: .topLeading)
            Spacer()
            
            Text("Slant Height (s): \(currentSquareBasedPyramid.slantHeight)")
                .font(.system(.headline, design: .rounded))
                .frame(width: 300, height: 1, alignment: .topLeading)
            Spacer()
        }
        .padding(45)
    }
}

#Preview {
    SquareBasedPyramidView()
}
