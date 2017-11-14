//
//  ViewController.swift
//  UserDefaults
//
//  Created by hackeru on 12/11/2017.
//  Copyright © 2017 iosAgents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var input: UITextField!
    @IBOutlet var output: UILabel!
    
    let prefs = UserDefaults.standard
    
    @IBAction func save() {
        prefs.set(input.text!, forKey: "msg")
    }
    
    @IBAction func load() {
        if let value = prefs.string(forKey: "msg") {
            output.text = value
        } else {
            output.text = "No Message"
        }
    }
    
    @IBAction func del() {
        prefs.removeObject(forKey: "msg")
    }
}


















