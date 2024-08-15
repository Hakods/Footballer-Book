//
//  Footballer.swift
//  FootballerBook
//
//  Created by Ahmet Hakan Altıparmak on 15.08.2024.
//

import Foundation
import UIKit

class Footballer{
    var name : String
    var team : String
    var age : Int
    var image : UIImage
    
    init(name: String, team: String, age: Int, image: UIImage) {
        self.name = name
        self.team = team
        self.age = age
        self.image = image
    }
}
