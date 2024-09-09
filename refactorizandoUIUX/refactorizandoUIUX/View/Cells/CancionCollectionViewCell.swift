import UIKit

class CancionCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    let headphonesIcon = UIImageView(image: UIImage(systemName: "headphones"))

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupCell() {
        // Setup imageView, titleLabel, subtitleLabel, and headphonesIcon
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(headphonesIcon)

        // Style
        imageView.contentMode = .scaleAspectFill
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        subtitleLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        titleLabel.textColor = .black
        subtitleLabel.textColor = .gray

        // Constraints
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        headphonesIcon.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            headphonesIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            headphonesIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            headphonesIcon.widthAnchor.constraint(equalToConstant: 20),
            headphonesIcon.heightAnchor.constraint(equalToConstant: 20),
            
            titleLabel.leadingAnchor.constraint(equalTo: headphonesIcon.trailingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -10),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            
            subtitleLabel.leadingAnchor.constraint(equalTo: headphonesIcon.trailingAnchor, constant: 10),
            subtitleLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -10),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            imageView.widthAnchor.constraint(equalToConstant: 50),
            imageView.heightAnchor.constraint(equalToConstant: 50),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    func configure(with model: structModelo) {
        imageView.image = model.imageView
        titleLabel.text = model.title
        subtitleLabel.text = model.subtitle
    }
}

