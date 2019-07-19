//
//  speedViewController.swift
//  IOSConverter
//
//  Created by Camper on 7/18/19.
//  Copyright © 2019 Sci - Tech. All rights reserved.
//

import UIKit
import Foundation

class speedViewController: UIViewController {
    var val: Double = 0.0
    @IBOutlet weak var mpsLabel: UILabel!
    @IBOutlet weak var kmphLabel: UILabel!
    @IBOutlet weak var knLabel: UILabel!
    
    @IBAction func inputField(_ sender: UITextField) {
        val = Double(sender.text ?? "0.0") ?? 0.0
        //labelCarat.text = "\(val * 5) C"
        //labelDWT.text = "\(val * 0.64301) dwt"
        //labelTOZ.text = "\(val * 0.032151) t oz"
        
        mpsLabel.text = "\(Measurement(value: val, unit: UnitSpeed.milesPerHour).converted(to: .metersPerSecond))"
        kmphLabel.text = "\(Measurement(value: val, unit: UnitSpeed.milesPerHour).converted(to: .kilometersPerHour))"
        knLabel.text = "\(Measurement(value: val, unit: UnitSpeed.milesPerHour).converted(to: .knots))"
        
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
