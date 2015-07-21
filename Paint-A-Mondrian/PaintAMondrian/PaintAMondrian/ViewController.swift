//
//  ViewController.swift
//  PaintAMondrian
//
//  Created by Sean Reed on 7/7/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var currentColor = UIColor.clearColor()
    
    let yellowButton = BoxedBorderButton(frame: CGRectMake(0,0,50,50))
    
    let blueButton = BoxedBorderButton(frame: CGRectMake(75,0,50,50))

    let whiteButton = BoxedBorderButton(frame: CGRectMake(150,0,50,50))
    let redButton = BoxedBorderButton(frame: CGRectMake(225,0,50,50))
    let buttonContainerView = UIView(frame: CGRectMake(50, 400, 300, 100))
    
    let mondrianContainerView = UIView(frame: CGRectMake(50, 50, 300, 200))
    

    let gestureRecognizer = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // setup the buttons
        
            var buttons = [yellowButton, blueButton, whiteButton, redButton]
        
        buttonContainerView.backgroundColor = UIColor.grayColor()

        
        yellowButton.backgroundColor = UIColor.yellowColor()
        blueButton.backgroundColor = UIColor.blueColor()
        whiteButton.backgroundColor = UIColor.whiteColor()
        redButton.backgroundColor = UIColor.redColor()
        
        var index = 1
        for button in buttons{
            button.addTarget(self, action: "didTapButton:", forControlEvents: .TouchUpInside)
            button.tag = index
            buttonContainerView.addSubview(button)
            index++
        }
        view.addSubview(buttonContainerView)
        
        mondrianContainerView.backgroundColor = UIColor.grayColor()
        mondrianContainerView.tag = 0
        
        index = 1
        let xsize:CGFloat = 75.0
        let ysize:CGFloat = 50.0
        for(var x = 0; x < 4; x++){
            for(var y=0; y<4; y++){

                var newBoxView = BoxedBorderView(frame: CGRectMake(CGFloat(x)*xsize,CGFloat(y)*ysize,xsize,ysize))
                newBoxView.tag = index
                newBoxView.backgroundColor = UIColor.whiteColor()
                newBoxView.userInteractionEnabled = true
                mondrianContainerView.addSubview(newBoxView)
                index++
            }
        }
        gestureRecognizer.addTarget(self, action: "didTapView:")
        mondrianContainerView.addGestureRecognizer(gestureRecognizer)
        
        view.addSubview(mondrianContainerView)
    }



    func didTapButton(sender: BoxedBorderButton){
        switch (sender.tag){
        case 1: currentColor = UIColor.yellowColor()
        case 2: currentColor = UIColor.blueColor()
        case 3: currentColor = UIColor.whiteColor()
        case 4: currentColor = UIColor.redColor()
        default: break
        }
        println("Current color is \(currentColor)")
    }
    
    func didTapView(sender:UITapGestureRecognizer){
        if sender.state == .Ended{
            let tappedPoint = sender.locationInView(sender.view)

            if let tappedView = sender.view!.hitTest(tappedPoint, withEvent: nil){
                if tappedView.tag != 0 {
                    tappedView.backgroundColor = currentColor
                }
            }
        }
    }
}

