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
            Text("Height: \(currentSquareBasedPyramid.height.formatted())")
            
            //Slider control
            Slider(
                value: $currentSquareBasedPyramid.height,
                in: 1...100,
                step: 1.0
            )
            
            //BASE LENGTH SLIDER
            
            //Label and current value
            Text("Base Length")
            
            //Slider control
            Slider(
                value: $currentSquareBasedPyramid.baseLength,
                in: 1...100,
                step: 1.0
            )
            
            //Current Value
            Text("Base Length is: \(currentSquareBasedPyramid.baseLength.formatted())")
            
            
        }
    }
}

#Preview {
    SquareBasedPyramidView()
}
