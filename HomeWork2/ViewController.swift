//
//  ViewController.swift
//  HomeWork2
//
//  Created by Алексей Хворов on 27.04.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellovLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    //Не понял как это работает \/
    private var currentLight = CurrentLight.red //Первое включение после нажатия, потом смена.
    private let lightsOn: CGFloat = 1 //Не понял как привязывается
    private let lightsOff: CGFloat = 0.2 //Не понял как привязывается

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 20
      
        redLightView.alpha = lightsOff
        yellovLightView.alpha = lightsOff
        greenLightView.alpha = lightsOff
        
        //frame - св-во, кот вкл в себя размер вью, коорд вью относ супервью, на кот располог
        //bounds - раз-р и коорд вью относ самой себя
        // не самый прав но самый очевид вар \/
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellovLightView.layer.cornerRadius = yellovLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
       
    }

    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red: // Не понял почему это обозн через точку
            greenLightView.alpha = lightsOff
            redLightView.alpha = lightsOff
            currentLight = .yellow
            
        case .yellow:
            redLightView.alpha = lightsOff
            yellovLightView.alpha = lightsOff
            currentLight = .green
            
        case .green:
            yellovLightView.alpha = lightsOff
            greenLightView.alpha = lightsOff
            currentLight = .red
        }
        
        }
    
}
//Не понял как это работает и зачем это \/
// MARK: - CurrentLigh
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
