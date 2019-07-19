//
//  massViewController.swift
//  IOSConverter
//
//  Created by Camper on 7/15/19.
//  Copyright © 2019 Sci - Tech. All rights reserved.
//

import UIKit
import Foundation

class massViewController: UIViewController {
    var val: Double = 0.0
    @IBOutlet weak var labelCarat: UILabel!
    @IBOutlet weak var labelDWT: UILabel!
    @IBOutlet weak var labelTOZ: UILabel!
    @IBOutlet weak var labelLBS: UILabel!
    
    @IBAction func inputField(_ sender: UITextField) {
        val = Double(sender.text ?? "0.0") ?? 0.0
        //labelCarat.text = "\(val * 5) C"
        //labelDWT.text = "\(val * 0.64301) dwt"
        //labelTOZ.text = "\(val * 0.032151) t oz"
        
        labelCarat.text = "\(Measurement(value: val, unit: UnitMass.grams).converted(to: .carats))"
        labelDWT.text = "\(Measurement(value: val, unit: UnitMass.grams).converted(to: .decigrams))"
        labelTOZ.text = "\(Measurement(value: val, unit: UnitMass.grams).converted(to: .ouncesTroy))"
        labelLBS.text = "\(Measurement(value: val, unit: UnitMass.grams).converted(to: .pounds))"
        
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
