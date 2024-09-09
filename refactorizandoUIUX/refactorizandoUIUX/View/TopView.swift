//
//  TopView.swift
//  refactorizandoUIUX
//
//  Created by user263366 on 9/9/24.
//

import Foundation
import UIKit

class TopView: UIView {
    
    
    
    // MARK: - UI Elements
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "imagenPerfil")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 50
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Laura Kalbag"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Love the way music makes me feel"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        label.textColor = .gray
        return label
    }()
    
    private let iconoMusica = BuildHelper.crearStatImageView(from: "music.note")
    private let numeroMusica: UILabel = BuildHelper.crearStatLabel(with: "127")
    
    private let iconoGente = BuildHelper.crearStatImageView(from: "person.2.fill")
    private let numeroGente: UILabel = BuildHelper.crearStatLabel(with: "2261")
    
    private let iconoCorazon = BuildHelper.crearStatImageView(from: "heart.fill")
    private let numeroCorazon: UILabel = BuildHelper.crearStatLabel(with: "5531")
    
    private lazy var statsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [iconoMusica, iconoGente, iconoCorazon])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup Functions
    private func setupView() {
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(statsStackView)
    }
    
    private func setupConstraints() {
        // Profile Image Constraints
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            profileImageView.widthAnchor.constraint(equalToConstant: 100),
            profileImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // Name Label Constraints
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        
        // Description Label Constraints
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        
        // Stats Stack View Constraints
        statsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            statsStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            statsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            statsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            statsStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
    }
}
