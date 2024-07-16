//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var brain = BrainCalculator()

    
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var weight: UILabel!
    

    
    var bmiLabel2 = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightChanged(_ sender: UISlider) {
        height.text = brain.getHeight(sender)
    }
    
    
    @IBAction func weigthChanged(_ sender: UISlider) {
        weight.text = brain.getWeight(sender)
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        brain.setBMI(heightSlider, weightSlider)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destination = segue.destination as! ResultViewController
            let bmi: BMI = brain.getBMI()
            destination.labelText = bmi.bmiValue
            destination.color = bmi.color
            destination.advice = bmi.advice
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
    
    
    
    
}
