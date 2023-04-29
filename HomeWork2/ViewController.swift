//
//  ViewController.swift
//  HomeWork2
//
//  Created by Алексей Хворов on 27.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellovLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 20
    }

    @IBAction func startButtonTapped() {
    }
    
}

