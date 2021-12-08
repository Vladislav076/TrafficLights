//
//  ViewController.swift
//  TrafficLights
//
//  Created by Владислав on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSetting()
        buttonSettings()

    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        startButton.setTitle("Next", for: .normal)
        changeColor()
        

    }
    
    
    func viewSetting() {
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }
    
    func buttonSettings() {
        startButton.backgroundColor = .blue
        startButton.tintColor = .white
        startButton.layer.cornerRadius = 10
        startButton.setTitle("Start", for: .normal)
    }
    
    func changeColor() {
        if redView.alpha != 1  {
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        } else if yellowView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        } else if greenView.alpha != 1 {
            greenView.alpha = 1
        }
    
}
}

