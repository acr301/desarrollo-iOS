//
//  CancionCollectionViewCell.swift
//  refactorizandoUIUX
//
//  Created by user263366 on 9/9/24.
//

import UIKit

class CancionCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupCell() {
        // Setup imageView, titleLabel, and subtitleLabel, similar to the top view's setup method
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)

        // Setup constraints for imageView, titleLabel, and subtitleLabel
        // ...
    }

    func configure(with model: structModelo) {
        imageView.image = model.imageView
        titleLabel.text = model.title
        subtitleLabel.text = model.subtitle
    }
}
