//
//  ViewController.swift
//  HelloSpeech
//
//  Created by Sean Reed on 6/9/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        var synthesizer = AVSpeechSynthesizer()
//        var utterance = AVSpeechUtterance(string: "Hello World I am Here now")
//        println(synthesizer.speaking)
//        synthesizer.speakUtterance(utterance)
//        println(synthesizer.speaking)
        
        var mySpeechController = THSpeechController()
        mySpeechController.beginConversation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

