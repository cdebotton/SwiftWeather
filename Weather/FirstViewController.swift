//
//  FirstViewController.swift
//  Weather
//
//  Created by Christian de Botton on 1/19/15.
//  Copyright (c) 2015 Christian de Botton. All rights reserved.
//

import UIKit
import SwiftyJSON

class FirstViewController: UIViewController {
    
    let app: AppModel = AppModel.sharedInstance

    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipcodeLabel.text = app.zipcode
        app.getToday(weatherLoaded)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func weatherLoaded(response: AnyObject?) {
        var data: JSON = JSON(response!)
        
        if let tempValue: NSNumber = data["main"]["temp"].number {
            let temp = "\(tempValue) F"
            tempLabel.text = temp
        }
        
        if let desc: String = data["weather"][0]["description"].string {
            descriptionLabel.text = desc
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

