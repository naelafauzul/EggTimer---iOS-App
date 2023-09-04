//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    let eggTimes = ["Soft": 30, "Medium": 40, "Hard": 70]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate() //menghentikan timer setiap kali button ditekan, Stops the timer from ever firing again and requests its removal from its run loop.
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
            
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
    
//    @IBAction func mediumSelected(_ sender: UIButton) {
//        timer.invalidate() //menghentikan timer setiap kali button ditekan, Stops the timer from ever firing again and requests its removal from its run loop.
//        let medium = sender.currentTitle!
//
//        secondsRemaining = eggTimes[medium]!
//
//        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
//        }
    
    
            
        @objc func updateTimer(){
            if secondsPassed>totalTime{
                secondsPassed += 1
                    
                progressBar.progress = Float (secondsPassed) / Float (totalTime)
                
                print(Float (secondsPassed) / Float (totalTime))
                print(Float(secondsPassed/totalTime))
                
                    
            } else{
                timer.invalidate()
                titleLabel.text = "DONE"
            }
        }
}
            
            
    
        

    
    

