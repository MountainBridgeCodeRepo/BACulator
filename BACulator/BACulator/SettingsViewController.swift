//
//  ViewController.swift
//  BACulator
//
//  Created by Eric Cauble on 12/23/17.
//  Copyright © 2017 Mountain Bridge Code. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    //outlets
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var label1: UILabel!
    //instance vars 
    let defaults = UserDefaults.standard
    //let settingsModel = SettingsModel(Int: gender, Int: weight)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weightTextField.text = defaults.string(forKey: "userWeightKey")
        genderTextField.text = defaults.string(forKey: "userGenderKey")
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submitButtonWasPressed(_ sender: Any) {
      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is DrinkSelectionViewController
        {
            let vc = segue.destination as? DrinkSelectionViewController
            vc?.weight = Int(weightTextField.text!)
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

