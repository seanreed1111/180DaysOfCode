Greetings, Professor Falken
This project uses #AVFoundation
More specifically, it uses AVSpeechSynthesizer to recreate a short exchange from the movie WarGames
AVSpeechSynthesizer's basic unit is an AVSpeechUtterance, which converts an input String into an utterance.
an AVSpeechUtterance has properties such as an AVSpeechSynthesisVoice, an utterance rate, an utterance pitchMultiplier, etc.
Once an utterance is initialized, we send the msg speakUtterance(utterance)to the AVSpeechSynthesizer 
To convey two parties having a conversation, need to write a loop over all the speechStrings, convert the speechString into an utterance, and call speakUtterance. The AVSpeechVoice must be switched back and forth after each utterance in the conversation.
