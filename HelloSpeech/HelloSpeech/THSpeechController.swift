//
//  THSpeechController.swift
//  HelloSpeech
//
//  Created by Sean Reed on 6/9/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import AVFoundation

//done w/o initializers 

class THSpeechController{
    var synthesizer = AVSpeechSynthesizer()
    var voices = [AVSpeechSynthesisVoice(language: "en-US"),AVSpeechSynthesisVoice(language: "en-GB") ]
    var speechStrings = [String]()
    
    func beginConversation(){
        speechStrings = self.buildSpeechStrings()
        var currentVoice = 0
        for speechString in speechStrings{
            var utterance = AVSpeechUtterance(string: speechString)
            utterance.voice = voices[currentVoice]
            utterance.rate = 0.4
            utterance.pitchMultiplier = 0.8
            utterance.postUtteranceDelay = 0.1
            synthesizer.speakUtterance(utterance)
            currentVoice += 1
            currentVoice = currentVoice % 2 == 0 ? 0 : 1 // this can be put into a (Swap voice) function

        }
    }
    func buildSpeechStrings() -> [String]{
        var sentences = [String]()
        sentences.append("Hello AV Foundation. How are you?")
        sentences.append("I'm well. Thanks for asking.")
        sentences.append("Are you excited about the book?")
        sentences.append("Very! I have always felt so misunderstood.")
        sentences.append("What is your favorite feature?")
        sentences.append("Oh, they're all my babies. I couldn't possibly choose.")
        sentences.append("It was great to speak with you!")
        sentences.append("The pleasure was all mine. Have fun!")
        
        return sentences
    }
}