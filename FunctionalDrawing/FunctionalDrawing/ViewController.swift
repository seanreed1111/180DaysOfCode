//
//  ViewController.swift
//  FunctionalDrawing
//
//  Created by Sean Reed on 7/21/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myButton = BoxedBorderButton()
        let buttonFrame = CGRectMake(0, 0, 60, 60)
        myButton.frame = buttonFrame
        myButton.backgroundColor = UIColor.blueColor()

        let myView = BoxedBorderView()
        let viewFrame = CGRectMake(0, 0, 300, 300)
        myView.frame = viewFrame
        myView.backgroundColor = UIColor.yellowColor()

        myView.addSubview(myButton)
        view.addSubview(myView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

