//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sam Shahriary on 1/22/17.
//  Copyright © 2017 Sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipAmountSegments: UISegmentedControl!
    
    @IBOutlet weak var UserInput: UITextField!
    
    @IBOutlet weak var TipAmountLabel: UILabel!
    
    @IBOutlet weak var TotalBillAmountLabel: UILabel!
    
    @IBAction func CalcButton(_ sender: Any) {
        
        var TipAmount: Double = 0.0
            switch TipAmountSegments.selectedSegmentIndex
            {
                case 0:
                    TipAmount = Double (UserInput.text!)! * 0.10
                case 1:
                    TipAmount = Double (UserInput.text!)! * 0.15
                case 2:
                    TipAmount = Double (UserInput.text!)! * 0.20
                default:
                    TipAmount = 0
            }
        
        TipAmountLabel.text = "Tip Amount: \(TipAmount)"
        let TotalBill = Double (UserInput.text!)! + TipAmount
        TotalBillAmountLabel.text = "Total Amount: \(TotalBill)"
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

