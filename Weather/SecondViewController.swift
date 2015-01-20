//
//  SecondViewController.swift
//  Weather
//
//  Created by Christian de Botton on 1/19/15.
//  Copyright (c) 2015 Christian de Botton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let app: AppModel = AppModel.sharedInstance
    @IBOutlet weak var zipcodeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipcodeLabel.text = app.zipcode
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

