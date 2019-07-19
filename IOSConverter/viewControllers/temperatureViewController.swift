//
//  temperatureViewController.swift
//  IOSConverter
//
//  Created by Camper on 7/15/19.
//  Copyright © 2019 Sci - Tech. All rights reserved.
//

import UIKit
import Foundation

class temperatureViewController: UIViewController {
    var val: Double = 0.0
    @IBOutlet weak var labelF: UILabel!
    @IBOutlet weak var labelK: UILabel!
    
    @IBAction func inputField(_ sender: UITextField) {
        val = Double(sender.text ?? "0.0") ?? 0.0
        //labelF.text = "\(((val * 9) / 5) + 32) °F"
        //labelK.text = "\(val + 273.15) °K"
        labelF.text = "\(Measurement(value: val, unit: UnitTemperature.celsius).converted(to: .fahrenheit))"
        labelK.text = "\(Measurement(value: val, unit: UnitTemperature.celsius).converted(to: .kelvin))"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
