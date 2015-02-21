//
//  ViewController.swift
//  BullsEye
//
//  Created by bo120 on 2/18/15.
//  Copyright (c) 2015 madhuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    var targetValue: Int = 0
    var round: Int = 0
    var score: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
        updateLabels()
    }
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showAlert() {
        var difference = abs(currentValue - targetValue)
        var points = 100 - difference
        score = score + points
        var title: String
        if difference == 0 {
            title="perfect"
            points += 100
         }
        else if difference < 5 {
            title = "you almost had it"
                points += 50
            
        }
        else if difference < 10 {
            title="pretty good"
        }
        else {
            title = " not even close"
        }
        score += points
        let message = "You scored \(points) points"
        
        let alert = UIAlertController(title: title,
            message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default,
            handler: {
                action in self.startNewRound()
                self.updateLabels()
            })
            
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
                currentValue = lroundf(slider.value)
    }
    func startNewRound() {
        round += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    func updateLabels() {
            targetLabel.text = String(targetValue)
            scoreLabel.text = String(score)
            roundLabel.text = String(round)
        
    }
    func startNewGame()
    { score = 0
        round = 0
        startNewRound()
    }
    @IBAction func startOver() {
            startNewGame()
            updateLabels()
    }

}

