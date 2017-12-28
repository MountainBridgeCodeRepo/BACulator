//
//  ViewController.swift
//  BACulator
//
//  Created by Eric Cauble on 12/23/17.
//  Copyright © 2017 Mountain Bridge Code. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var label1: UILabel!
    
    let defaults = UserDefaults.standard
    //let settingsModel = SettingsModel(Int: gender, Int: weight)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        weightTextField.text = defaults.string(forKey: "userWeightKey")
//        genderTextField.text = defaults.string(forKey: "userGenderKey")
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submitButtonWasPressed(_ sender: Any) {
        let weight = weightTextField.text
        let gender = genderTextField.text
//        defaults.set(weight, forKey: "userWeightKey")
//        defaults.set(gender, forKey: "userGenderKey")
        let settings = SettingsModel.init(gender: Int(gender!), weight: Int(weight!))
        settings.printInfo()
        let vc = DrinkSelectionViewController()
        vc.weight = Int((weight)!)
        print(vc.weight)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

