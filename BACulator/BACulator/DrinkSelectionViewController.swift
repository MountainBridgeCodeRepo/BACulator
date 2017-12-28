//
//  DrinkSelectionViewController.swift
//  BACulator
//
//  Created by Sara Hunter on 12/27/17.
//  Copyright © 2017 Mountain Bridge Code. All rights reserved.
//

import Foundation
import UIKit
class DrinkSelectionViewController:UIViewController{
    @IBOutlet weak var weightLabel: UILabel!
    var weight: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
//        weightLabel.text = String(weight)
        print("weight is \(weight!)")
        // Do any additional setup after loading the view, typically from a nib.
    }

}
