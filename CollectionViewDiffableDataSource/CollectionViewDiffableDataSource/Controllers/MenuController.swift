//
//  MenuController.swift
//  CollectionViewDiffableDataSource
//
//  Created by LABORATORIO MAC UAM on 7/9/24.
//

import Foundation

class MenuController {
    //MenuController necesita un objeto DataSource para funcionar
    // esto se puede poner incluso en privado
    private let dataSource: MenuDataSourceRepresentable
    
    //A traves del init inyectamos, un constructor
    init (dataSource: MenuDataSourceRepresentable) {
        self.dataSource = dataSource
    }
    
    func getData(menuName:String = "") -> [MenuModel] {
        dataSource.getMenuItems(query: menuName)
        //TO-DO implementar busqueda
    }
}
