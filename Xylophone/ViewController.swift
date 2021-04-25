//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(audioFileName: String)  {
        let path = Bundle.main.path(forResource: audioFileName, ofType:nil)!
        let audioUrl = URL(fileURLWithPath: path)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
            audioPlayer?.play()
        } catch {
            print("Error while playing sound: \(error)")
        }
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        //print(sender.currentTitle)
        playSound(audioFileName: sender.currentTitle! + ".wav")
    }
    
    
}

