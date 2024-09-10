//
//  TopView.swift
//  refactorizandoUIUX
//

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
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Love the way music makes me feel"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    private let iconoMusica = BuildHelper.crearStatImageView(from: "music.note")
    private let numeroMusica = BuildHelper.crearStatLabel(with: "127")
    
    private let iconoGente = BuildHelper.crearStatImageView(from: "person.2.fill")
    private let numeroGente = BuildHelper.crearStatLabel(with: "2261")
    
    private let iconoCorazon = BuildHelper.crearStatImageView(from: "heart.fill")
    private let numeroCorazon = BuildHelper.crearStatLabel(with: "5531")
    
    private lazy var statsStackView: UIStackView = {
        let musicStack = BuildHelper.crearHStatStackView(with: iconoMusica, and: numeroMusica)
        let peopleStack = BuildHelper.crearHStatStackView(with: iconoGente, and: numeroGente)
        let heartStack = BuildHelper.crearHStatStackView(with: iconoCorazon, and: numeroCorazon)
        let stackView = BuildHelper.createHorizontalStackView(with: [musicStack, peopleStack, heartStack])
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
    
    private lazy var heartStack: UIStackView = {
        let heartImageView = BuildHelper.crearStatImageView(from: "heart.fill")
        heartImageView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleHeartTap))
        heartImageView.addGestureRecognizer(tapGesture)
        
        let label = BuildHelper.crearStatLabel(with: "\(HeartController.shared.heartCount)")
        let stackView = BuildHelper.crearHStatStackView(with: heartImageView, and: label)
        return stackView
    }()

    @objc private func handleHeartTap() {
        let newCount = HeartController.shared.increaseHeartCount()
        // Find and update the label in the heartStack
        if let heartLabel = heartStack.arrangedSubviews.compactMap({ $0 as? UILabel }).first {
            heartLabel.text = "\(newCount)"
        }
    }

    
    private func setupConstraints() {
        // Profile Image Constraints
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            profileImageView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 4), // Dynamic sizing
            profileImageView.heightAnchor.constraint(equalTo: profileImageView.widthAnchor), // Ensure the image remains square
            profileImageView.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -10) // Add some flexibility to bottom spacing
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

