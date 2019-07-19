//
//  currencyViewController.swift
//  IOSConverter
//
//  Created by Camper on 7/14/19.
//  Copyright © 2019 Sci - Tech. All rights reserved.
//

import UIKit
import Foundation

class currencyViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var pickerData: [String] = ["GBP", "HKD", "IDR", "ILS", "DKK", "INR", "CHF", "MXN", "CZK", "SGD", "THB", "HRK", "EUR", "MYR", "NOK", "CNY", "BGN", "PHP", "PLN", "ZAR", "CAD", "ISK", "BRL", "RON", "NZD", "TRY", "JPY", "RUB", "KRW", "AUD", "HUF", "SEK"]
    public var selected = ""
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        selected = pickerData[pickerView.selectedRow(inComponent: 0)]
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var curencyPicker: UIPickerView!
    
    
    @IBAction func btnRefresh(_ sender: UIButton) {
        
        LoadRates.load() { (eRates) in
            
            if let rate = eRates?.rates[self.selected] {
                self.displayLabel.text = "\(rate) \(self.selected)"
            }else{
                self.displayLabel.text = ""
                let alertController = UIAlertController(title: "Error", message: "There was a problem loading the exchange rates. Make sure you are connected to the internet.", preferredStyle: .alert)
                let action1 = UIAlertAction(title: "Ok", style: .default) { (action:UIAlertAction) in
                    
                    return
                    
                }
                alertController.addAction(action1)
               self.present(alertController, animated: true, completion: nil)

                
            
            
        }
        
        }
    }
        
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            curencyPicker.delegate = self
            curencyPicker.dataSource = self
            // Do any additional setup after loading the view.
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
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

