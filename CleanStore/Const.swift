//
//  Const.swift
//  CleanStore
//
//  Created by Volodymyr on 4/21/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import Foundation

let sityArray = ["L'viv", "Odessa", "Kharkiv", "Kyiv", "Ternopil", "Kherson", "Mykolaiv"]

let weatherKey = "4d7a5ef0040858ca"
let weatherURL = "http://api.wunderground.com/api/4d7a5ef0040858ca/conditions/q/Ukraine/"

enum Keys: String {
    case currentObservation = "current_observation"
    case currentIcon = "icon_url"
    case currentTemperature = "temp_c"
    case currentWind = "wind_kph"
}
