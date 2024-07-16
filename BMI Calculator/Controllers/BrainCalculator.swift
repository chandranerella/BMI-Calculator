//
//  BrainCalculator.swift
//  BMI Calculator
//
//  Created by Chandra Sekhar Nerella on 7/16/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BrainCalculator {
    
    var bmiLabel = "0.0"
    var bmi: Float = 0.0
    
    func getHeight(_ slider: UISlider) -> String {
        let value = round(slider.value * 100) / 100
        return String(value) + "m"
    }
    
    func getWeight(_ slider: UISlider) -> String {
        let value = round(slider.value * 100) / 100
        return String(value) + "kg"
    }
    
    mutating func setBMI(_ heightSlider: UISlider, _ weightSlider: UISlider) {
        let numerator = Float(weightSlider.value)
        let denominator = Float(heightSlider.value * heightSlider.value)

        let BMI = numerator / denominator
        
        bmi = BMI
        
        bmiLabel = String(BMI)
        
    }
    
    func getBMI() -> BMI {
        if bmi < 18.5 {
            return BMI(bmiValue: bmiLabel, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), advice: "Eat more pies")
        } else if bmi < 24.9 {
            return BMI(bmiValue: bmiLabel, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), advice: "Fit as a fiddle")
        } else {
            return BMI(bmiValue: bmiLabel, color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), advice: "Eat less pies")
        }
        
    }
    
    
}
