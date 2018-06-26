//
//  ViewController.swift
//  HitTheNumber
//
//  Created by Cast Group on 20/06/2018.
//  Copyright © 2018 br.hoffsilva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Title", message: "message", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func generateRandomNumber(max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max)))
    }

}

