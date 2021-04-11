//
//  PizzaCollectionViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit



class PizzaCollectionViewController: UICollectionViewController {
    
    var arrayPizza = ["324","540","542","653","542","753","341","521","521","314","530","526"]
    var arrayPizzaImage = [UIImage(named: "piizaMeny"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12")]
    
    
    var arrayPizzaName = ["Мексиканская","Додо","Мясная","Ветчина","Маргарита","Гавайская","Сырная","Супемясная","Двойная Пеперони","Пеперони", "Песто","Цезарь"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell2")
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayPizza.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celll23", for: indexPath) as! PizzaCollectionViewCell
        
        // Configure the cell
        
        cell.PizzaName.text = arrayPizzaName[indexPath.row]
        cell.PizzaImage.image = arrayPizzaImage[indexPath.row]
        cell.PizzaPrice.text = arrayPizza[indexPath.row] + "₽"
        cell.PizzaView.layer.borderColor = UIColor.black.cgColor
        cell.PizzaView.layer.borderWidth = 3
        
        
        
        return cell
    }
    
}
