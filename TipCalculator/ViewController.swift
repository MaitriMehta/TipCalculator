//
//  ViewController.swift
//  TipCalculator
//
//  Created by Maitri Mehta on 3/8/17.
//  Copyright © 2017 Maitri Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblBill: UITextField!
    @IBOutlet weak var lblTip: UITextField!
    @IBOutlet weak var lblTotal: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculate(_ sender: Any) {
        let tipPercentages = [0.1,0.2,0.3]
        let bill = Double(lblBill.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        lblTip.text = String(format:"$%.2f",tip)
        lblTotal.text = String(format:"$%.2f",total)

    }
   

    @IBAction func onTap(_ sender: Any) {
            view.endEditing(true)
    }
}

