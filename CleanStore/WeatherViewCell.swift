//
//  WeatherViewCell.swift
//  CleanStore
//
//  Created by Volodymyr on 4/21/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

class WeatherViewCell: UITableViewCell {

    @IBOutlet weak var sityNameLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentTemperatureLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
