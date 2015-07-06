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
    var voices = [AVSpeechSynthesisVoice(language: "en-US"),AVSpeechSynthesisVoice(language: "en-AU") ]
    var speechStrings = [String]()
    
    func beginConversation(){
        speechStrings = self.buildSpeechStrings()
        var currentVoice = 0
        for speechString in speechStrings{
            var utterance = AVSpeechUtterance(string: speechString)
            utterance.voice = voices[currentVoice]
            utterance.rate = 0.05
            utterance.pitchMultiplier = 0.6
            utterance.postUtteranceDelay = 0.2
            synthesizer.speakUtterance(utterance)
            currentVoice += 1
            currentVoice = currentVoice % 2 == 0 ? 0 : 1 // this can be put into a (Swap voice) function

        }
    }
    func buildSpeechStrings() -> [String]{
        var sentences = [String]()
        sentences.append("Greetings, Professor Falken")
        sentences.append("Hello, Joshua")
        sentences.append("A strange game. The only winning move is not to play.")
        sentences.append("   ")
        sentences.append("How   about   a   nice   game   of   chess?")
        return sentences
    }
}