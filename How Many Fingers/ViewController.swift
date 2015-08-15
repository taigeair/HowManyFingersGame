//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Taige Zhang on 21/06/2015.
//  Copyright (c) 2015 Taige Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var guessNumber: UITextField!
    
    @IBAction func guessFinger(sender: AnyObject) {
        var realNumber = arc4random_uniform(11)
        var guess = guessNumber.text.toInt()
        if guess == Int(realNumber) {
            println("yes")
            answer.text = "You guessed correctly!"
        } else if guess == nil {
            answer.text = "Please make a guess from 0 to 10."
        } else {
            println("no")
            answer.text = "Your guess was incorrect. It was \(realNumber)"
        }
        
    }
    
    @IBOutlet weak var answer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated:Bool){
        super.viewDidAppear(animated)
        let tapRecognizer = UITapGestureRecognizer(target: self, action: "handleSingleTap:")
        tapRecognizer.numberOfTapsRequired = 1
        self.view.addGestureRecognizer(tapRecognizer)
    }

    func handleSingleTap(recognizer: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }

}

