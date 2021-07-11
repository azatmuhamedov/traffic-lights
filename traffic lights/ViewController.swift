//
//  ViewController.swift
//  traffic lights
//
//  Created by Азат Мухамедов on 11.07.2021.
//

import UIKit



class ViewController: UIViewController {
   
    enum currentLight {
        case red, yellow, green
    }
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var currentLight = currentLight.red
    
    let lightOn: CGFloat = 1
    let lightOf: CGFloat = 0.3
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightOf
        yellowLight.alpha = lightOn
        greenLight.alpha = lightOf
        
        startButton.layer.cornerRadius = 15
        
    }

    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }

    @IBAction func startButtonPress() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight
    }
}

