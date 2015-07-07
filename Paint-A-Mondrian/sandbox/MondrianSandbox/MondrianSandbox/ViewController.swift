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

    @IBOutlet weak var redBoxView: BoxedBorderView!
    
    @IBOutlet weak var greenBoxView: BoxedBorderView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //redBoxView and greenBoxView were set up in IB
        
        // add a black border to them in viewDidLoad
        
//        redBoxView.layer.borderColor = UIColor.blackColor().CGColor
//        redBoxView.layer.borderWidth = 2.0
//        
//        greenBoxView.layer.borderColor = UIColor.blackColor().CGColor
//        greenBoxView.layer.borderWidth = 2.0
    }


}

