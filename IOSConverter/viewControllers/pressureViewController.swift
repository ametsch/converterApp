//
//  pressureViewController.swift
//  IOSConverter
//
//  Created by Camper on 7/15/19.
//  Copyright © 2019 Sci - Tech. All rights reserved.
//

import UIKit
import Foundation

class pressureViewController: UIViewController {
    var val: Double = 0.0
    @IBOutlet weak var mbarLabel: UILabel!
    @IBOutlet weak var pascalLabel: UILabel!
    @IBOutlet weak var torrLabel: UILabel!
    @IBOutlet weak var atmLabel: UILabel!
    
    @IBAction func inputField(_ sender: UITextField) {
        val = Double(sender.text ?? "0.0") ?? 0.0
        /*
        mbarLabel.text = "\(val * 1_000) mbar"
        pascalLabel.text = "\(val * 100_000) Pa"
        torrLabel.text = "\(val * 750.6) Torr"
        atmLabel.text = "\(val * 0.98692) atm"
         */
        
        mbarLabel.text = "\(Measurement(value: val, unit: UnitPressure.bars).converted(to: .millibars))"
        pascalLabel.text = "\(Measurement(value: val, unit: UnitPressure.bars).converted(to: .kilopascals))"
        torrLabel.text = "\(Measurement(value: val, unit: UnitPressure.bars).converted(to: .millimetersOfMercury))"
        atmLabel.text = "\(Measurement(value: val, unit: UnitPressure.bars).converted(to: .inchesOfMercury))"
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
