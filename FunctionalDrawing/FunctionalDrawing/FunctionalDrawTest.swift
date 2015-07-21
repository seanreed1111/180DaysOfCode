//
//  FunctionalDrawTest.swift
//  FunctionalDrawing
//
//  Created by Sean Reed on 7/21/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

class FunctionalDrawTest :NSObject {
    
    enum Primitive{
        case Ellipse
        case Rectangle
        case Text(String)
    }
    
    enum Diagram{
        case Prim(CGSize, Primitive)
        case Beside(Box<Diagram>, Box<Diagram>)
        case Below(Box<Diagram>, Box<Diagram>)
        case Attributed(Attribute, Box<Diagram>)
        case Align(Vector2D, Box<Diagram>)
    }
    
    enum Attribute{
        case FillColor(UIColor)
    }
    
}

