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
            
            //Slider control
            Slider(
                value: $currentSquareBasedPyramid.baseLength,
                in: 1...100,
                step: 1.0
            )
            
            //OUTPUT
            Text("Surface Area: \(currentSquareBasedPyramid.surfaceArea)")
            Spacer()
            
            Text("Volume: \(currentSquareBasedPyramid.volume)")
            Spacer()
            
            Text("Base Area: \(currentSquareBasedPyramid.baseArea)")
            Spacer()
            
            Text("Triangle Area: \(currentSquareBasedPyramid.triangleArea)")
            Spacer()
            
            Text("Slant Height: \(currentSquareBasedPyramid.slantHeight)")
            Spacer()
            
        }
    }
}

#Preview {
    SquareBasedPyramidView()
}
