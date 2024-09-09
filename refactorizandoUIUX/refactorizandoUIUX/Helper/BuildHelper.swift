//
//  BuildHelper.swift
//  refactorizandoUIUX
//
//  Created by user263366 on 9/9/24.
//


// inspirado del BuildHelper de Rubio45 porque la verdad es que si hay patrones recurrentes en el UI
import Foundation
import UIKit

class BuildHelper {
    
    static func crearStatLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    static func crearStatImageView(from image: String) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: image)
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    
    static func crearHStatStackView(with image: UIImageView, and label: UILabel) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [image, label])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.spacing = 5
        stackView.backgroundColor = .white.withAlphaComponent(0)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
    
}
