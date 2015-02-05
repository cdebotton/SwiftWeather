//
//  SecondViewController.swift
//  Weather
//
//  Created by Christian de Botton on 1/19/15.
//  Copyright (c) 2015 Christian de Botton. All rights reserved.
//

import UIKit
import SwiftyJSON

class SecondViewController: UIViewController {
    
    let app: AppModel = AppModel.sharedInstance
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var weatherDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipcodeLabel.text = app.zipcode
        app.getFiveDay(weatherLoaded)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func weatherLoaded(response: AnyObject?) {
        let data: JSON = JSON(response!)
        
        if let list: Array = data["list"].array {
            var printout: String = "";
            
            for day in list {
                if let tempValue = day["temp"]["max"].number? {
                    let temp: String = "\(tempValue) F"
                    printout = printout + "\(temp)\n"
                }
                
                if let desc: String = day["weather"][0]["description"].string? {
                    printout = printout + "\(desc)\n"
                }
                
                printout = printout + "\n"
            }
            weatherDescription.numberOfLines = 0
            weatherDescription.text = printout
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

