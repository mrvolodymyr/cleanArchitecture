//
//  DataManager.swift
//  CleanStore
//
//  Created by Volodymyr on 4/22/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

var weatherArray = [WeatherStructure]()

protocol GetWeatherProtocol: class {
    func getWeatherBySity(sity: String, closure: (NSError?, [WeatherStructure]?) -> ()) -> ()

}

class WeatherDataManager: GetWeatherProtocol {

    func getWeatherBySity(sity: String, closure: (NSError?, [WeatherStructure]?) -> ()) -> () {
        print("Current weather in " + "\(sity)" + " is:")

        let currentURL = weatherURL + sity + ".json"
        guard let url = URL(string: currentURL) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, let response = response else { return }
            do {
                guard let json = try JSONSerialization.jsonObject(with: data) as? [String : Any]
                    else { return }
                for (key, value) in json {
                    if (key == Keys.currentObservation.rawValue) {
                        if let currentWeather: [String : Any] = value as? [String : Any] {
                            for (key, value) in currentWeather {
                                if (key == Keys.currentIcon.rawValue) {
                                    let icon = value
                                    print("Weather image: " + "\(icon)")
                                } else if (key == Keys.currentTemperature.rawValue) {
                                    let temp = value
                                    print("Temperature: " + "\(temp)" + "\u{00B0}" + "C")
                                } else if (key == Keys.currentWind.rawValue) {
                                    let wind = value
                                    print("Wind: " + "\(wind)" + "kph")
                                }
                            }
                        }
                    }
                }
            } catch let jsonErr {
                print("Error serialization:", jsonErr)
            }
        }.resume()
    }

}
