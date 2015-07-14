//
//  ViewController.swift
//  tapGestureRecognizerSandbox
//
//  Created by Sean Reed on 7/9/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var currentColor = UIColor.clearColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set up the views
        
        let greenBox = UIButton(frame:CGRectMake(100, 150, 100, 100))
        greenBox.backgroundColor = UIColor.greenColor()
        greenBox.tag = 1
        
        let redBox = UIButton(frame:CGRectMake(100, 100, 200, 50))
        redBox.backgroundColor = UIColor.redColor()
        redBox.tag = 2
        
        greenBox.addTarget(self, action: "didTapView:", forControlEvents: .TouchUpInside)
        
        redBox.addTarget(self, action: "didTapView:", forControlEvents: .TouchUpInside)
        
        view.addSubview(redBox)
        view.addSubview(greenBox)
        
        //set up buttons
        
        let greenButton = UIButton(frame: CGRectMake(150, 300, 55, 55))

        greenButton.backgroundColor = UIColor.greenColor()
        greenButton.tag = 1
        greenButton.addTarget(self, action: "didTapButton:", forControlEvents: .TouchUpInside)
        
        
        
        let redButton = UIButton(frame: CGRectMake(200, 300, 55, 55))
        redButton.backgroundColor = UIColor.redColor()
        redButton.tag = 2
        redButton.addTarget(self, action: "didTapButton:", forControlEvents: .TouchUpInside)
        
        view.addSubview(redButton)
        view.addSubview(greenButton)
        
        
    }

    func didTapButton(sender:UIButton) {
        if (sender.tag == 1){
            currentColor = UIColor.greenColor()
            println("color is \(currentColor)")
        } else if (sender.tag == 2){
            currentColor = UIColor.redColor()
            println("color is \(currentColor)")
        }
    }
    
    func didTapView(sender:UIButton){
            sender.backgroundColor = currentColor
    }

}

