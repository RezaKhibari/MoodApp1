//
//  ViewController.swift
//  MoodApp1
//
//  Created by Alireza Khibari on 2024-05-22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
  


    
    var currentValue: Int = 0
    var targetValue = 0


    override func viewDidLoad() {
      super.viewDidLoad()
      startNewRound()  // Replace previous code with this
    }



    
    @IBAction func showAlert() {
        var message = "The value of the slider is: \(currentValue)"
        
        if currentValue > 0 && currentValue < 20 {
            message = "The value of the slider is: \(currentValue)" +
                                    "\nYour mood is Happy"
        } else if currentValue > 20 && currentValue < 40 {
           message = "The value of the slider is: \(currentValue)" +
                                    "\nYour mood is Neutral"
        } else if currentValue > 40 && currentValue < 60 {
           message = "The value of the slider is: \(currentValue)" +
                                    "\nYour mood is Sad"
        } else if currentValue > 60 && currentValue < 80 {
            message = "The value of the slider is: \(currentValue)" +
                                    "\nYour mood is Angry"
        } else if currentValue > 80 && currentValue < 100 {
            message = "The value of the slider is: \(currentValue)" +
                                    "\nYour mood is Anxious"
        }
        let alert = UIAlertController(
        title: "Hello, World",
        message: message,    // changed
        preferredStyle: .alert)

      let action = UIAlertAction(
        title: "OK",          // changed
        style: .default,
        handler: nil)

      alert.addAction(action)

      present(alert, animated: true, completion: nil)
     startNewRound()
    }

    
    @IBAction func sliderMoved(_ slider: UISlider) {
      currentValue = lroundf(slider.value)
    }

    func startNewRound() {
      targetValue = Int.random(in: 1...100)
      currentValue = 50
      slider.value = Float(currentValue)
    }

}

