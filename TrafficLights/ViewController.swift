//
//  ViewController.swift
//  TrafficLights
//
//  Created by Вячеслав Квашнин on 11.03.2022.
//

import UIKit

enum DifferentColors {
    case red
    case orange
    case green
}

class ViewController: UIViewController {

    @IBOutlet var viewCollections: [UIView]!
    
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var orange: UIView!
    @IBOutlet weak var green: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var differentColors = DifferentColors.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        red.layer.cornerRadius = red.frame.width / 2
        orange.layer.cornerRadius = orange.frame.width / 2
        green.layer.cornerRadius = green.frame.width / 2
        
        red.alpha = 0.5
        orange.alpha = 0.5
        green.alpha = 0.5
        
        startButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonAction() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch differentColors {
        case .red:
            green.alpha = 0.5
            red.alpha = 1
            differentColors = .orange
        case .orange:
            red.alpha = 0.5
            orange.alpha = 1
            differentColors = .green
        case .green:
            green.alpha = 1
            orange.alpha = 0.5
            differentColors = .red
        }
        
    }
}

