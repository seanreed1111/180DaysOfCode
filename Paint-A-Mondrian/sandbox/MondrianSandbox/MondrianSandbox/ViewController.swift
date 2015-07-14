//
//  ViewController.swift
//  MondrianSandbox
//
//  Created by Sean Reed on 7/7/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit
import QuartzCore


class ViewController: UIViewController {
    
    var currentColor = UIColor.clearColor()

    @IBOutlet weak var boxView: UIView!
    @IBOutlet weak var redBoxView: BoxedBorderView!
    
    @IBOutlet weak var greenBoxView: BoxedBorderView!

    @IBAction func pressGreenButton(sender: UIButton) {
        currentColor = UIColor.greenColor()
    }
    
    @IBAction func pressRedButton(sender: UIButton) {
        currentColor = UIColor.redColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //redBoxView and greenBoxView were set up in IB
//        println(greenBoxView.isKindOfClass(BoxedBorderView)) //ok this works
        
        
    }

    @IBAction func boxViewTapped(sender: UITapGestureRecognizer) {
        if(sender.state == .Began){
            println("sender.isKindOfClass(BoxedBorderView)")
            println(sender.isKindOfClass(BoxedBorderView))
                }
    }

}

