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
        

        
    
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        circuloPerfil1.backgroundColor = .clear
        circuloPerfil2.backgroundColor = .clear

        // Ensure circuloPerfil1 (outer circle) is circular
        circuloPerfil1.layer.cornerRadius = circuloPerfil1.frame.size.width / 2
        circuloPerfil1.layer.masksToBounds = true
        circuloPerfil1.layer.borderWidth = 2  // Set desired border width
        circuloPerfil1.layer.borderColor = UIColor(red: 195/255, green: 87/255, blue: 74/255, alpha: 1).cgColor  // Border color C3574A
        
        // Ensure circuloPerfil2 (inner circle) is circular
        circuloPerfil2.layer.cornerRadius = circuloPerfil2.frame.size.width / 2
        circuloPerfil2.layer.masksToBounds = true
        circuloPerfil2.layer.borderWidth = 2  // Same border width
        circuloPerfil2.layer.borderColor = UIColor(red: 195/255, green: 87/255, blue: 74/255, alpha: 1).cgColor  // Border color C3574A

        // Ensure imagenPerfil (profile image) is circular
        imagenPerfil.layer.cornerRadius = imagenPerfil.frame.size.width / 2
        imagenPerfil.layer.masksToBounds = true
        
        print("circuloPerfil1 frame: \(circuloPerfil1.frame)")
        print("circuloPerfil2 frame: \(circuloPerfil2.frame)")
        print("imagenPerfil frame: \(imagenPerfil.frame)")

    }
    @IBOutlet weak var circuloPerfil2: UIView!
    @IBOutlet weak var circuloPerfil1: UIView!
    @IBOutlet weak var imagenPerfil: UIImageView!
}
	
