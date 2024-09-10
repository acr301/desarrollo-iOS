import Foundation
import UIKit

class BuildHelper {
    
    // Function to create a UILabel for statistics
    static func crearStatLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    // Function to create a UIImageView for statistics
    static func crearStatImageView(from image: String) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: image)
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }

    // Function to create a horizontal UIStackView with an image and label
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

    // New method to create a horizontal stack view with multiple elements
    static func createHorizontalStackView(with elements: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: elements)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }

    // Helper to create vertical stack views
    static func createVerticalStackView(with elements: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: elements)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }

    // Optional for reusable cell label creation
    static func createLabel(with text: String, fontSize: CGFloat, weight: UIFont.Weight, color: UIColor) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    // Optional for reusable cell imageView creation
    static func createImageView(image: UIImage?, contentMode: UIView.ContentMode) -> UIImageView {
        let imageView = UIImageView(image: image)
        imageView.contentMode = contentMode
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
}

