//
//  settingsModel.swift
//  BACulator
//
//  Created by Sara Hunter on 12/27/17.
//  Copyright © 2017 Mountain Bridge Code. All rights reserved.
//

import Foundation

class SettingsModel{
    var gender: Int?
    var weight: Int?
    init (gender: Int?, weight: Int?) {
        if weight  != nil  && gender != nil{
            self.gender = gender
            self.weight = weight
        }
    }
    
    func printInfo(){
        print(String(describing: gender))
        print(String(describing: weight))
    }
}
