//
//  SquareBasedPyramid.swift
//  MyGeometricFigures
//
//  Created by Neil Shah on 2024-10-29.
//

import Foundation

//Define Protocol
protocol Describable {
    var description: String { get }
}

//Define Structure
struct SquareBasedPyramid: Describable {
    
    //MARK: Stored Properties
    var height: Double
    var baseLength: Double
    
    //MARK: Computed Properties
    var baseArea: Double {
        return baseLength * baseLength
    }
    var slantHeight: Double {
        return pow((height * height) + (baseArea / 4), 0.5)
    }
    var triangleArea: Double {
        return baseLength * slantHeight / 2
    }
    var surfaceArea: Double {
        return baseArea + 4 * triangleArea
    }
    var volume: Double {
        return baseArea * height / 3
    }
    var description: String {
        return "The surface area is \(surfaceArea) units squared, and the volume is \(volume) units cubed."
    }
}
