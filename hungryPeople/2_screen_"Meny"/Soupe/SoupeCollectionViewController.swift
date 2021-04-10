//
//  SoupeCollectionViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 09.04.2021.
//

import UIKit

class SoupeCollectionViewController: UICollectionViewController {
    
     //MARK: Arrays
    
    var arrayProductPrice = ["123","543","214","542","1652","1632","123","643","124","521","621","731"]
    var arrayProductName = ["Том Ям","Мисо-широ","Том Кха","Бульен","Салянка","Щи","Окрошка","Харчо","Лесной","Дневной","Веган","Постный"]
    
    var arrayProductImage = [UIImage(named: "Tom"),
                              UIImage(named: "Misso"),
                              UIImage(named: "bull"),
                              UIImage(named: "Tom"),
                              UIImage(named: "Misso"),
                              UIImage(named: "Tom"),
                              UIImage(named: "Tom"),
                              UIImage(named: "Misso"),
                              UIImage(named: "bull"),
                              UIImage(named: "Tom"),
                              UIImage(named: "Misso"),
                              UIImage(named: "bull")]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")

    }
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayProductPrice.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SoupeCollectionViewCell
    
        cell.SoupePrice.text = arrayProductPrice[indexPath.row] + "₽"
        cell.SoupeName.text = arrayProductName[indexPath.row]
        cell.SoupeImage.image = arrayProductImage[indexPath.row]
        
         //MARK:- Настройка внешности ячейки
        
        cell.content.layer.borderWidth = 3
        cell.content.layer.borderColor = UIColor.black.cgColor
        
        
      
       
    
        
    
        return cell
    }

  

}
