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
        //the ! unwraps weight, if you delete it and run you'll see optional 34 as the value
        weightLabel.text = String(describing: weight!)
    }

}
