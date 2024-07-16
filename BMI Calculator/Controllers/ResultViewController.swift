//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Chandra Sekhar Nerella on 7/14/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var bmiLabel: UILabel!
    
    var labelText = "0.0"
    
    var color: UIColor?
    
    var advice: String?
    
    @IBOutlet weak var suggestionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = labelText
        view.backgroundColor = color
        suggestionLabel.text = advice
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculateClicked(_ sender: UIButton) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
