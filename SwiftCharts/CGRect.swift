//
//  CGRect.swift
//  SwiftCharts
//
//  Created by ischuetz on 13/08/16.
//  Copyright © 2016 ivanschuetz. All rights reserved.
//

import UIKit

extension CGRect {

    public func insetBy(dx dx: CGFloat = 0, dy: CGFloat = 0, dw: CGFloat = 0, dh: CGFloat = 0) -> CGRect {
        return CGRectMake(
            origin.x + dx,
            origin.y + dy,
            width - dw - dx,
            height - dh - dy
        )
    }
    
    func asLinesArray() -> [(p1: CGPoint, p2: CGPoint)] {
        return [
            (p1: CGPointMake(minX, minY), p2: CGPointMake(maxX, minY)),
            (p1: CGPointMake(maxX, minY), p2: CGPointMake(maxX, maxY)),
            (p1: CGPointMake(maxX, maxY), p2: CGPointMake(minX, maxY)),
            (p1: CGPointMake(minX, maxY), p2: CGPointMake(minX, minY))
        ]
    }
    var center: CGPoint {
        return CGPointMake(width / 2, height / 2)
    }
    

    /**
     Calculates the bounding rectangle of a rectangle after it's rotated.
     
     Source: http://stackoverflow.com/a/9168238/930450
     
     - parameter radians: The angle in radians that it's to be rotated
     
     - returns: The bounding rectangle of the rotated rectangle
     */
    public func boundingRectAfterRotating(radians radians: CGFloat) -> CGRect {
        return CGRectApplyAffineTransform(self, CGAffineTransformMakeRotation(radians))
    }

}