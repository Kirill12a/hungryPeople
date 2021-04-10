//
//  DesertCollectionViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit



class DesertCollectionViewController: UICollectionViewController {
    
    
    
    var arrayDesert = ["Яблочный пирог","Чизкейк Нью-Йорк","Фонданы, 2 шт","Сырники со сгущенным молоком, 4 шт","Сырники с малиновым вареньем, 4 шт","Пончик клубничный","Пончик Тройной шоколад","Маффин Три шоколада"]
    var arrayImage = [UIImage(named: "40"), UIImage(named: "41"), UIImage(named: "42"), UIImage(named: "43"), UIImage(named: "44"), UIImage(named: "45"), UIImage(named: "46"), UIImage(named: "47")]
    
    var arrayPrice: [String] = ["119","119","290","290","290","89","89","79"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell5")

        // Do any additional setup after loading the view.
    }

   

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayDesert.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! DesertCollectionViewCell
    
        // Configure the cell
        cell.DesertName.text = arrayDesert[indexPath.row]
        cell.DesertImage.image = arrayImage[indexPath.row]
        cell.DesertPrice.text = arrayPrice[indexPath.row] + "₽"
        
        cell.DesertView.layer.borderWidth = 3
        cell.DesertView.layer.borderColor = UIColor.black.cgColor
    
        return cell
    }

  

}
