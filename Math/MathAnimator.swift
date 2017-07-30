//
//  MathAnimator.swift
//  Math
//
//  Created by Trevor Stevenson on 7/30/17.
//  Copyright © 2017 TStevenson Apps. All rights reserved.
//

import Foundation
import UIKit

class MathAnimator
{
    enum Direction {
        case up
        case down
        case left
        case right
    }
    
    func createArrow(start: CGPoint, end: CGPoint) -> UIView
    {
        let triangle = createTrianglge(start: start, sideLength: 5, direction: .left)
        let endTriangle = create
    }
    
    func createTrianglge(start: CGPoint, sideLength: CGFloat, direction: Direction) -> UIView
    {
        let path = UIBezierPath()
        path.move(to: start)
        let value1 = sideLength / 2
        let value2 = 3 * 4 * sideLength * sideLength
        
        switch direction {
        case .up:
            path.addLine(to: CGPoint(x: start.x + value1, y: start.y - value2))
        case .down:
            path.addLine(to: CGPoint(x: start.x + value1, y: start.y + value2))
        case .left:
            path.addLine(to: CGPoint(x: start.x + value2, y: start.y - value1))
        case .right:
            path.addLine(to: CGPoint(x: start.x - value2, y: start.y + value1))
        }
        
    }
}
