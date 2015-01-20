//
//  AppModel.swift
//  Weather
//
//  Created by Christian de Botton on 1/20/15.
//  Copyright (c) 2015 Christian de Botton. All rights reserved.
//

import Foundation

class AppModel {
    
    var zipcode: String = ""

    class var sharedInstance: AppModel {
        struct Static {
            static let instance: AppModel = AppModel()
        }
        return Static.instance
    }
    
}