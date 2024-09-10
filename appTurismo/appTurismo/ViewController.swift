//
//  ViewController.swift
//  appTurismo
//
//  Created by user263366 on 9/9/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mensaje1Label.textColor = UIColor(red: 10/255, green: 20/234, blue: 30/216, alpha: 1.0)
        
        loginView.clipsToBounds = true
        loginView.layer.cornerRadius = 25
    }

    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var mensaje1Label: UILabel!
    
}

