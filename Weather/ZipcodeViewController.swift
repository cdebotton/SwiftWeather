//
//  ZipcodeViewController.swift
//  Weather
//
//  Created by Christian de Botton on 1/20/15.
//  Copyright (c) 2015 Christian de Botton. All rights reserved.
//

import UIKit

class ZipcodeViewController: UIViewController {
    
    let app: AppModel = AppModel.sharedInstance
    
    @IBOutlet weak var zipInput: UITextField!
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zipSubmit(sender: AnyObject) {
        app.zipcode = self.zipInput.text
    }
}