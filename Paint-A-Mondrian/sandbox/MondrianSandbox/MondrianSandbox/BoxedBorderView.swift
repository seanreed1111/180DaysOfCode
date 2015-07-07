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

class BoxedBorderView : UIView {
    //equal border width on all sides
    var borderLineWidth:CGFloat = 5.0
    
    override func drawRect(rect: CGRect) {

        var context:CGContextRef = UIGraphicsGetCurrentContext()
        
        //initialize border color and line width
        CGContextSetStrokeColorWithColor(context, UIColor.blackColor().CGColor)
        CGContextSetLineWidth(context, borderLineWidth)

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
}



//- (void)drawRect:(CGRect)rect {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect));
//    CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMinY(rect));
//    CGContextSetStrokeColorWithColor(context, [[UIColor redColor] CGColor] );
//    CGContextSetLineWidth(context, 2.0);
//    CGContextStrokePath(context);
//}