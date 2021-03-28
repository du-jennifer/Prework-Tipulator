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
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        // Set default percentages (15%, 18%, 20%)
        let defaults = UserDefaults.standard
        
        defaults.set(15, forKey: "tip1")
        defaults.set(18, forKey: "tip2")
        defaults.set(20, forKey: "tip3")
    }
        
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Retrieves default tip percentages from UserDefaults
        let defaults = UserDefaults.standard
        
        let tipPercent1 = defaults.integer(forKey: "tip1")
        let tipPercent2 = defaults.integer(forKey: "tip2")
        let tipPercent3 = defaults.integer(forKey: "tip3")
        
        // Use defaults to update tip amount in segment control
        tipControl.setTitle(String(format: "%d%%", tipPercent1), forSegmentAt: 0)
        tipControl.setTitle(String(format: "%d%%", tipPercent2), forSegmentAt: 1)
        tipControl.setTitle(String(format: "%d%%", tipPercent3), forSegmentAt: 2)
        }
        
 

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Access default tip percentages to calculate tip
        let defaults = UserDefaults.standard
        
        let tipPercent1 = defaults.integer(forKey: "tip1")
        let tipPercent2 = defaults.integer(forKey: "tip2")
        let tipPercent3 = defaults.integer(forKey: "tip3")
        
        
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying: tip * tipPercentage

        let tipPercentages = [Double(tipPercent1)/100.0, Double(tipPercent2)/100.0, Double(tipPercent3)/100.0]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        // Get bill total by adding tip to bill
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    

}


