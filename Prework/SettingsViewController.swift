//
//  SettingsViewController.swift
//  Prework
//
//  Created by Jennifer Du on 3/26/21.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var tip1TextField: UITextField!
    @IBOutlet weak var tip2TextField: UITextField!
    @IBOutlet weak var tip3TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeDefaultValues(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        // Get tip percentages from text field input
        let tip1 = Int(tip1TextField.text!) ?? 15
        let tip2 = Int(tip2TextField.text!) ?? 18
        let tip3 = Int(tip3TextField.text!) ?? 20
        
        // Set defaults for tip percentage 1,2,3
        defaults.set(tip1, forKey: "tip1")
        defaults.set(tip2, forKey: "tip2")
        defaults.set(tip3, forKey: "tip3")
        
        // Allow UserDefaults to save.
        defaults.synchronize()
        
        

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
