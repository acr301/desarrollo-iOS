import Foundation
import UIKit

struct structModelo {
    let imageView: UIImage
    let title: String
    let subtitle: String
}

let cellModelo: [structModelo] = [
    structModelo(imageView: UIImage(named: "imagenBottom1") ?? UIImage(), title: "Listening to Green Grass of Tunnel", subtitle: "Múm – Finally We Are No One\n2022"),
    structModelo(imageView: UIImage(named: "imagenBottom2") ?? UIImage(), title: "Listening to Count your blessings", subtitle: "Johnson Oatman – Evenings\n2012"),
    structModelo(imageView: UIImage(named: "imagenBottom3") ?? UIImage(), title: "Listening to Daydream", subtitle: "Chris Lock – Fir Sure\n2009")
]

