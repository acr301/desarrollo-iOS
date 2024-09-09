//
//  structModelo.swift
//  refactorizandoUIUX
//
//  Created by user263366 on 9/9/24.
//

import Foundation
import UIKit

struct structModelo {
    let imageView: UIImage
    let title: String
    let subtitle: String
}

let cellModelo: [structModelo] = [
    
    //structModelo(imageView: UIImage(named:"nombreimg")!, title: "descripcion string", subtitle: "descripcion detallada string"
    
    
    structModelo(imageView: UIImage(named: "imagenBottom1")!, title: "Listening to Green Grass of Tunnel", subtitle: "Múm – Finally We Are No One\n2022"),
    structModelo(imageView: UIImage(named: "imagenBottom2")!, title: "Listening to Count your blessings", subtitle: "Johnson Oatman – Evenings\n2012"),
    structModelo(imageView: UIImage(named: "imagenBottom3")!, title: "Listening to Daydream", subtitle: "Chris Lock – Fir Sure\n2009")
    
]
