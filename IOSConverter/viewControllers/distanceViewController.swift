//
//  distanceViewController.swift
//  IOSConverter
//
//  Created by Camper on 7/15/19.
//  Copyright © 2019 Sci - Tech. All rights reserved.
//

import UIKit
import Foundation

class distanceViewController: UIViewController {

    var val: Double = 0.0
    @IBOutlet weak var labelMeter: UILabel!
    @IBOutlet weak var labelKilometer: UILabel!
    @IBOutlet weak var labelCentimeter: UILabel!
    @IBOutlet weak var labelMillimeter: UILabel!
    @IBOutlet weak var labelMile: UILabel!
    @IBOutlet weak var labelInch: UILabel!
    @IBOutlet weak var labelLightYear: UILabel!
    
    @IBAction func inputTextField(_ sender: UITextField) {
        val = Double(sender.text ?? "0.0") ?? 0.0
        
        /*
        labelMeter.text = "\(val * 0.3048) m"
        labelKilometer.text = "\(val * 0.0003048) km"
        labelCentimeter.text = "\(val * 30.48) cm"
        labelMillimeter.text = "\(val * 304.8) mm"
        labelMile.text = "\(val * 0.0001893932) mi"
        labelInch.text = "\(val * 12) in"
        labelLightYear.text = "\(val * Double(3.2217625e-17)) ly"
        */
        
        labelMeter.text = "\(Measurement(value: val, unit: UnitLength.feet).converted(to: .meters))"
        labelKilometer.text = "\(Measurement(value: val, unit: UnitLength.feet).converted(to: .kilometers))"
        labelCentimeter.text = "\(Measurement(value: val, unit: UnitLength.feet).converted(to: .centimeters))"
        labelMillimeter.text = "\(Measurement(value: val, unit: UnitLength.feet).converted(to: .millimeters))"
        labelMile.text = "\(Measurement(value: val, unit: UnitLength.feet).converted(to: .miles))"
        labelInch.text = "\(Measurement(value: val, unit: UnitLength.feet).converted(to: .inches))"
        labelLightYear.text = "\(Measurement(value: val, unit: UnitLength.feet).converted(to: .lightyears))"
        
        
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
