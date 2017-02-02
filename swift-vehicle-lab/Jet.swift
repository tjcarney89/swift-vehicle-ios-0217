//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by TJ Carney on 1/31/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if inFlight == true {
            altitude += maxAltitude/5
            decelerate()
        }
    }
        
    override func dive() {
        if altitude != 0 {
            altitude -= maxAltitude/5
            accelerate()
        }
    }
    
    func afterburner() {
        if inFlight == true && speed == maxSpeed {
            speed = maxSpeed*2
        }
    }
}
