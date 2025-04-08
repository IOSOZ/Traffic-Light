//
//  ViewController.swift
//  Traffic Light
//
//  Created by Олег Зуев on 03.04.2025.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        
        startButton.layer.cornerRadius = 10
    }
    
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction func startButtonDidTapped() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
            switch currentLight {
            case .red:
                redLightView.alpha = lightIsOn
                greenLightView.alpha = lightIsOff
                currentLight = .yellow
            case .yellow:
                yellowLightView.alpha = lightIsOn
                redLightView.alpha = lightIsOff
                currentLight = .green
            case .green:
                greenLightView.alpha = lightIsOn
                yellowLightView.alpha = lightIsOff
                currentLight = .red
            }
       
    }
    
}
// MARK:
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}

