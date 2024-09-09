//
//  ViewController.swift
//  refactorizandoUIUX
//
//  Created by user263366 on 9/8/24.
//

import UIKit

class PrimeraPantalla: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        
        inicioUI()
    
 
    }
    
    func inicioUI()  {
        
        
        let inicioTitle: UILabel =  {
            let inicioTitle = UILabel()
            inicioTitle.text = "Elaborado por Andres Castillo"
            inicioTitle.textColor = .white
            inicioTitle.font = UIFont.boldSystemFont(ofSize: 14)
            inicioTitle.textAlignment = .center
            
            inicioTitle.translatesAutoresizingMaskIntoConstraints = false
            return inicioTitle
        }()
        
        let inicioButton: UIButton = {
            let inicioButton = UIButton()
            inicioButton.setTitle("clic para ver tarea", for: .normal)
            inicioButton.setTitleColor(.white, for: .normal)
            inicioButton.backgroundColor = .link
            inicioButton.layer.cornerRadius = 8
            inicioButton.translatesAutoresizingMaskIntoConstraints = false
            return inicioButton
        }()
        
        view.addSubview(inicioButton)
        view.addSubview(inicioTitle)
        
        inicioButton.addTarget(self, action:#selector(botonFuePresionado), for: .touchUpInside)

        
        
        NSLayoutConstraint.activate([
            inicioTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            inicioTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            

            inicioButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            inicioButton.topAnchor.constraint(equalTo: inicioTitle.bottomAnchor, constant: 10),
            inicioButton.widthAnchor.constraint(equalToConstant: 200),

            
            
        ])
        
    }

    @objc func botonFuePresionado(){
        let tareaViewController = TareaViewController()
        self.navigationController?
            .pushViewController(tareaViewController, animated:true)
    }

}

