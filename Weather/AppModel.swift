//
//  AppModel.swift
//  Weather
//
//  Created by Christian de Botton on 1/20/15.
//  Copyright (c) 2015 Christian de Botton. All rights reserved.
//

import Foundation
import Alamofire

class AppModel {
    
    var zipcode: String = ""
    
    func getToday(responseHandler: (AnyObject?) -> ()) -> () {
        let ENDPOINT: String = "http://api.openweathermap.org/data/2.5/weather?q=\(zipcode)&units=imperial"
        Alamofire.request(.GET, ENDPOINT).responseJSON {(request, response, JSON, error) in
            responseHandler(JSON)
        }
    }
    
    func getFiveDay(responseHandler: (AnyObject?) -> ()) -> () {
        let ENDPOINT: String = "http://api.openweathermap.org/data/2.5/forecast/daily?q=\(zipcode)&units=imperial&cnt=7"
        Alamofire.request(.GET, ENDPOINT).responseJSON {(request, response, JSON, error) in
            responseHandler(JSON)
        }
    }

    class var sharedInstance: AppModel {
        struct Static {
            static let instance: AppModel = AppModel()
        }
        return Static.instance
    }
    
}