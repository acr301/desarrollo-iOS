//
//  HeaderCollectionReusableView.swift
//  CollectionViewDiffableDataSource
//
//  Created by LABORATORIO MAC UAM on 7/9/24.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    @IBOutlet weak var headerLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //para que al reusar la celda, le pasemos el texto y quede configurado
    func setup(text: String){
        headerLabel.text = text
    }
}
