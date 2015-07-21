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

struct Vector2D {
    let x: CGFloat
    let y:CGFloat
    
    var point: CGPoint {return CGPointMake(x,y)}
    var size: CGSize { return CGSizeMake(x, y)}
}

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


extension Diagram {
    var size: CGSize {
        switch self {
            case .Prim(let size, _):
                return size
            case .Attributed(_, let x):
                return x.unbox.size
            case .Beside(let l, let r):
                let sizeL = l.unbox.size
                let sizeR = r.unbox.size
                return CGSizeMake(sizeL.width + sizeR.width, max(sizeL.height, sizeR.height))
            case .Below(let l, let r):
                let sizeL = l.unbox.size
                let sizeR = r.unbox.size
                return CGSizeMake(max(sizeL.width,sizeR.width), sizeL.height + sizeR.height)
            case .Align(_, let r):
                return r.unbox.size
        }
    }
    
    // this function is totally busted
    func fit(alignment: Vector2D, inputSize: CGSize, rect: CGRect) -> CGRect{

        let scale = min(rect.size.width / inputSize.width, rect.size.height / inputSize.height)
        let size = CGSizeMake(scale * inputSize.width, scale * inputSize.height)
        let space = CGSizeMake(alignment.size.width * (size.width - rect.size.width), alignment.size.height * (size.height - rect.size.height))
        
        return CGRectZero
        
    }
}
