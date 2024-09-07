//
//  ViewController.swift
//  tareaUIUX
//
//  Created by user263366 on 9/4/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagenPerfil.layer.masksToBounds = true
        imagenPerfil.layer.cornerRadius = imagenPerfil.frame.height / 2
        
    
    }
    @IBOutlet weak var imagenPerfil: UIImageView!
}
