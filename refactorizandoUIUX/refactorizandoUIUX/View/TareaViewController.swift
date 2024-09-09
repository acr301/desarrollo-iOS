//
//  TareaViewController.swift
//  refactorizandoUIUX
//
//  Created by user263366 on 9/8/24.
//

import UIKit


class TareaViewController: UIViewController {
    
    private let topView = UIView()
    private let bottomView = UIView()
    
    private let perfilFotoView = UIImageView()
    private let nombreLabel = UILabel()
    private let descripcionLabel = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        
    

    }
    
    private func setupViews() {
        view.addSubview(topView)
        view.addSubview(bottomView)
        
        view.backgroundColor = .white
    }
    
    private func setupConstraints() {
        topView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 300),
            
            bottomView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    
}
