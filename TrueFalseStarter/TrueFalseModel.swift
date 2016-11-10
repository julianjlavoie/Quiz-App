//
//  TrueFalseModel.swift
//  TrueFalseStarter
//
//  Created by Julian Lavoie on 11/10/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//


import AudioToolbox

var gameSound: SystemSoundID = 0


func loadGameStartSound() {
    let pathToSoundFile = NSBundle.mainBundle().pathForResource("GameSound", ofType: "wav")
    let soundURL = NSURL(fileURLWithPath: pathToSoundFile!)
    AudioServicesCreateSystemSoundID(soundURL, &gameSound)
}

func playGameStartSound() {
    AudioServicesPlaySystemSound(gameSound)
}

