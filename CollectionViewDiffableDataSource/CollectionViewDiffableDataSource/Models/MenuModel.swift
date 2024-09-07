//
//  MenuModel.swift
//  CollectionViewDiffableDataSource
//
//  Created by LABORATORIO MAC UAM on 7/9/24.
//

import Foundation

// mi tipo MenuType tipo abstracto
enum MenuType: String, CaseIterable {
    case breakfast = "Desayunos"
    case mainCourse = "Platos Fuertes"
    case drink = "Bebidas"
    case dessert = "Postres"
}

// mi item tipo abstracto MenuModel
struct MenuModel {
    let id: String
    let name: String
    let price: Double
    let image: String
    let type: MenuType
    let description: String
}

extension MenuModel: Hashable {
    func hash(into hasher: inout Hasher)
    {
        hasher.combine(id)
    }
}
