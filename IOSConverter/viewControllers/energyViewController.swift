//
//  energyViewController.swift
//  IOSConverter
//
//  Created by Camper on 7/15/19.
//  Copyright © 2019 Sci - Tech. All rights reserved.
//

import UIKit
import Foundation

class energyViewController: UIViewController {
    var valW: Double = 0.0
    var valJ: Double = 0.0
    
    @IBOutlet weak var hpLabel: UILabel!
    @IBAction func wattField(_ sender: UITextField) {
        valW = Double(sender.text ?? "0.0") ?? 0.0
        // hpLabel.text = "\(valW * 745.7) hp"
         hpLabel.text = "\(Measurement(value: valW, unit: UnitPower.watts).converted(to: .horsepower))"
    }
    //////////////////////////////////////////////////////////////////////
    @IBOutlet weak var kcalLabel: UILabel!
    @IBOutlet weak var calLabel: UILabel!
    @IBOutlet weak var evoltLabel: UILabel!
    @IBOutlet weak var kwhLabel: UILabel!
    
    @IBAction func jouleField(_ sender: UITextField) {
        valJ = Double(sender.text ?? "0.0") ?? 0.0
        /*
        kcalLabel.text = "\()"
        evoltLabel.text = "\()"
        kcalLabel.text = "\()"
         */
        kcalLabel.text = "\(Measurement(value: valJ, unit: UnitEnergy.joules).converted(to: .kilocalories))"
        calLabel.text = "\(Measurement(value: valJ, unit: UnitEnergy.joules).converted(to: .calories))"
        evoltLabel.text = "\(Measurement(value: valJ, unit: UnitEnergy.joules).converted(to: .kilojoules))"
        kwhLabel.text = "\(Measurement(value: valJ, unit: UnitEnergy.joules).converted(to: .kilowattHours))"
        
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
