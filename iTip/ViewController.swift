//
//  ViewController.swift
//  iTip
//
//  Created by Aryan Khadiri on 12/17/19.
//  Copyright © 2019 Aryan Khadiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSelecter: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount
        let bill = Double(billField.text!) ?? 0
        //update tiplabel
        //update total
        let tipchoices = [0.15, 0.2, 0.22]
        let tip = bill * tipchoices[tipSelecter.selectedSegmentIndex]
        tipLabel.text = String(format: "$%.2f", tip)
        let total = bill+tip
        totalLabel.text = String(format:"$%.2f", total)
    }
    
    
}

