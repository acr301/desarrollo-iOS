//
//  CollectionViewCellReusable.swift
//  CollectionViewDiffableDataSource
//
//  Created by LABORATORIO MAC UAM on 7/9/24.
//

import UIKit

class CollectionViewCellReusable: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!

    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(menuModel: MenuModel) {
        imageView.image = UIImage(named: menuModel.image)
        priceLabel.text = "USD: \(menuModel.price)"
        descriptionLabel.text = menuModel.description
        nameLabel.text = menuModel.image
    }

}
