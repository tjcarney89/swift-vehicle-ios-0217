//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by TJ Carney on 1/31/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if speed + maxSpeed/5 < maxSpeed {
            speed += maxSpeed/5
        }
    }
    
    override func decelerate() {
        if speed - maxSpeed/5 >= 0 {
            speed -= maxSpeed/5
        }
    }
    
    func driftRight() {
        if speed != 0 {
            heading += 90
            heading = heading.truncatingRemainder(dividingBy: 360)
            speed -= speed/4
        }
    }
    
    func driftLeft() {
        if speed != 0 {
            heading -= 90
            speed -= speed/4
            if heading < 0 {
                heading *= -1
                heading = 360 - heading.truncatingRemainder(dividingBy: 360)
            }
        }
    
    }
}
