//
//  ViewController.swift
//  Prework
//
//  Created by Jennifer Du on 3/26/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        let defaults = UserDefaults.standard
        
        let tipPercent1 = defaults.integer(forKey: "tip1")
        let tipPercent2 = defaults.integer(forKey: "tip2")
        let tipPercent3 = defaults.integer(forKey: "tip3")
        // and use it to update the tip amount
        tipControl.setTitle(String(format: "%d%%", tipPercent1), forSegmentAt: 0)
        tipControl.setTitle(String(format: "%d%%", tipPercent2), forSegmentAt: 1)
        tipControl.setTitle(String(format: "%d%%", tipPercent3), forSegmentAt: 2)
        }
        
 

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    
 
    @IBAction func calculateTip(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        let tipPercent1 = defaults.integer(forKey: "tip1")
        let tipPercent2 = defaults.integer(forKey: "tip2")
        let tipPercent3 = defaults.integer(forKey: "tip3")
        
        
        
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
     //   let tipPercentages = [0.15, 0.18, 0.2]
        let tipPercentages = [Double(tipPercent1)/100.0, Double(tipPercent2)/100.0, Double(tipPercent3)/100.0]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    

}


