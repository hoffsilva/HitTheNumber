//
//  ViewController.swift
//  HitTheNumber
//
//  Created by Cast Group on 20/06/2018.
//  Copyright © 2018 br.hoffsilva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK - Properties
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var difference = 0
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        calculateDifference()
        let alert = UIAlertController(title: "Title", message: "\(currentValue)\n \(targetValue)\n \(difference)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            self.updateFocusIfNeeded()
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    func generateRandomNumber(max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max)))
    }
    
    func startNewRound() {
        round += 1
        currentValue = 50
        targetValue = 1 + Int(arc4random_uniform(100))
        slider.value = Float(currentValue)
        updateLabels()
    }
    
   
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    func calculateDifference() {
        if currentValue > targetValue {
            difference = currentValue - targetValue
        } else if currentValue < targetValue {
            difference = targetValue - currentValue
        } else {
            difference = 0
        }
    }

}

