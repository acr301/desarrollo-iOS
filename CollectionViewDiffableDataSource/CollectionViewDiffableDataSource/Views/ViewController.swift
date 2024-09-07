//
//  ViewController.swift
//  CollectionViewDiffableDataSource
//
//  Created by LABORATORIO MAC UAM on 7/9/24.
//

import UIKit

class ViewController: UIViewController {
    
    //este gestiona los datos del CollectionView
    typealias DataSource = UICollectionViewDiffableDataSource<MenuType, MenuModel>
    
    typealias Snapshot = NSDiffableDataSourceSnapshot<MenuType, MenuModel>

    @IBOutlet weak var collectionView: UICollectionView!
    
    private lazy var dataSource = makeDataSource()
    
    private var menuItems = [MenuModel]()
    
    
    let controller = MenuController(dataSource: MockMenuDataSource())
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        //let menu = controller.getData(menuName: "Arroz")
        //print(menu)
        
        // lo primero para usar un collection view, es registrar sus celdas
        cellRegistration()
        configureLayout()
        loadData()
        
        
    }
    
    
    func makeDataSource() -> DataSource{
        let dataSource = DataSource(collectionView: collectionView) { collectionView,
            indexPath, itemIdentifier in
            //indexPath 1,2,3,4,5 al array
            //closure, es un callback un objeto, aqui se ejecuta una logica
            //reusabilidad de celdas, cada que se reuse una celda se ejecutara este codigo
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellReusable", for: indexPath) as? CollectionViewCellReusable
            // MenuCollectionViewCell opcional porque SI LA ENCUENTRA, la castea
            
            cell?.setup(menuModel: itemIdentifier)
            
            return cell
            //a esta celda vamos a asignarle item, imagen, descripcion, etc...
            
        }
        
        // vista suplementaria
        
        dataSource.supplementaryViewProvider = { collectionView, elementKind, indexPath in
            guard elementKind == UICollectionView.elementKindSectionHeader else { return UICollectionReusableView()}
            
            let headerCell = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath) as? HeaderCollectionReusableView
            
            //esto lo tiene el snapshot
            let menuType = dataSource.snapshot().sectionIdentifiers[indexPath.section]
            
            headerCell?.setup(text: menuType.rawValue)
            
            return headerCell
            
            
        }
        
        return dataSource
    }
    
    
    
    // celda registrada que necesitara ser usada, reutilizada bajo el nombre MenuCollectionViewCell
    func cellRegistration(){
        collectionView.register(UINib(nibName: "CollectionViewCellReusable", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCellReusable")
        
        
        collectionView.register(UINib(nibName: "HeaderCollectionReusableView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderCollectionReusableView")
    }
    
    private func loadData(){
        menuItems = controller.getData()
        applySnapshot()
    }
    
    // estructurar la data
    private func applySnapshot(){
        
        var snapshot = Snapshot()
        
        //permite iterar por todos breakfast, plato fuerte, postre, bebida
        snapshot.appendSections(MenuType.allCases)
  
        
        MenuType.allCases.forEach {menuType in
            snapshot.appendItems(menuItems.filter { $0.type == menuType }, toSection: menuType)
            //una seccion es una celda mas que hay que registrar
        }
        
        //snapshot.appendItems(menuItems)
        
        dataSource.apply(snapshot, animatingDifferences: true)
        
    }
    
    private func configureLayout(){
        collectionView.collectionViewLayout = UICollectionViewCompositionalLayout(sectionProvider: { sectionIndex, layoutEnvironment in
            
            //necesita retornar seccion, que tenga grupo, y grupo que tenga item
            // 1. Item, celda
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200))
            
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200))
            
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
            
            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            section.interGroupSpacing = 20
            
            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(25))
            let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
            
            section.boundarySupplementaryItems = [header]
            
            
            return section
            
        })
    }


}

