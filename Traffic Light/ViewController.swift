//
//  ViewController.swift
//  Traffic Light
//
//  Created by Олег Зуев on 03.04.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 60
        redView.alpha = 0.3
        yellowView.layer.cornerRadius = 60
        yellowView.alpha = 0.3
        greenView.layer.cornerRadius = 60
        greenView.alpha = 0.3
        trafficLightButton.layer.cornerRadius = 5
    
    }
    
    private var counter = 0
    private enum TurnOnColour: Int {
        case red = 0
        case yellow = 1
        case green = 2
    }
   
    @IBAction func trafficLightButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        
            switch TurnOnColour(rawValue: counter) {
            case .red:
                redView.alpha = 1
                yellowView.alpha = 0.3
                greenView.alpha = 0.3
            case .yellow:
                redView.alpha = 0.3
                yellowView.alpha = 1
                greenView.alpha = 0.3
            case .green:
                redView.alpha = 0.3
                yellowView.alpha = 0.3
                greenView.alpha = 1
            default:
                redView.alpha = 0.3
                yellowView.alpha = 0.3
                greenView.alpha = 0.3
            }
        
        
         counter = counter < 2 ? counter + 1 : 0
        
    }
    
}

