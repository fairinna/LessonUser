//
//  ViewController.swift
//  UserDefaultsEx
//
//  Created by hackeru on 12/11/2017.
//  Copyright © 2017 iosAgents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTxt: UITextField!
    @IBOutlet var passTxt: UITextField!
    
    let prefs = UserDefaults.standard
    

    @IBAction func regist() {
        prefs.set(userTxt.text!, forKey: "user")
        prefs.set(passTxt.text!, forKey: "pass")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return prefs.string(forKey: "user") == userTxt.text
            && prefs.string(forKey: "pass") == passTxt.text
    }
    
}









