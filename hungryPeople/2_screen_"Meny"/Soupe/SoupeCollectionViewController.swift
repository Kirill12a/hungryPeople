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
    var arrayProductName = ["Том Ям","Мисо-широ","Том Ям","Том Ям","Мисо-широ","Мисо-широ","Мисо-широ","Мисо-широ","Том Ям","Том Ям","Том Ям","Том Ям"]
    

    
   
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
        cell.SoupeImage.image = UIImage(named: arrayProductName[indexPath.row])
        
        //MARK:- Настройка внешности ячейки 
        
        cell.content.layer.borderWidth = 3
        cell.content.layer.borderColor = UIColor.black.cgColor
        
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        

        let vc = storyboard?.instantiateViewController(identifier: "Soupe2ViewController") as? Soupe2ViewController
        vc?.image = UIImage(named: arrayProductName[indexPath.row])!
        vc?.name = arrayProductName[indexPath.row]
        print(arrayProductName[indexPath.row] + " вы добавили в корзину")
        
        self.navigationController?.pushViewController(vc!, animated: true)
     
        
    }
    
    
    
}
