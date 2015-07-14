//
//  BoxedBorderView.swift
//  MondrianSandbox
//
//  Created by Sean Reed on 7/7/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
// Xcode 6.4, Swift 1.2
//

import UIKit
import QuartzCore


@IBDesignable

class BoxedBorderView : UIView {
    //equal border width on all sides
    @IBInspectable var borderWidth:CGFloat = 3.0 {
        didSet{
            layer.borderWidth = borderWidth
            setNeedsDisplay()
        }
    }

    
    override func drawRect(rect: CGRect) {

        var context:CGContextRef = UIGraphicsGetCurrentContext()
        
        //initialize border color and line width
        CGContextSetStrokeColorWithColor(context, UIColor.blackColor().CGColor)
        CGContextSetLineWidth(context, borderWidth)

        // border on top
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect))
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMinY(rect))
        CGContextStrokePath(context)
        
        // border on left side
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect))
        CGContextAddLineToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect))
        CGContextStrokePath(context)
        
        //border on right side
        CGContextMoveToPoint(context, CGRectGetMaxX(rect), CGRectGetMinY(rect))
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect))
        CGContextStrokePath(context)
        
        //border on bottom
        
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect))
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect))
        CGContextStrokePath(context)
        
    }
    
//    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
//    //
//    }
}