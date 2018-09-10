//
//  Presenter.swift
//  CleanStore
//
//  Created by Volodymyr on 4/22/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

protocol GetWeatherPresenterInput: GetWeatherViewContollerOutput {
    func getWeather(sity: String)
}

class GetWeatherPresenter: GetWeatherPresenterInput {

    var interactor: GetWeatherInteractorInput!

    func getWeather(sity: String) {
        interactor.getDataFromDataManager(sity: sity)
    }
}
