//
//  DesertMenuCollectionViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 14.04.2021.
//

import UIKit



//cellDesert

class DesertMenuCollectionViewController: UICollectionViewController {
    
    var arrayDesert = ["Яблочный пирог","Чизкейк Нью-Йорк","Фонданы, 2 шт","Сырники со сгущенным молоком, 4 шт","Сырники с малиновым вареньем, 4 шт","Пончик клубничный","Пончик Тройной шоколад","Маффин Три шоколада"]
    
    var arrayPrice = ["119","119","290","290","290","89","89","79"]

    override func viewDidLoad() {
        super.viewDidLoad()

       
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellDesert")

        // Do any additional setup after loading the view.
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayDesert.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellDesert", for: indexPath) as! DesertMenyCollectionViewCell
        
        cell.DesertName.text = arrayDesert[indexPath.row]
        cell.DesertOmage.image = UIImage(named: arrayDesert[indexPath.row])
        cell.PriceDesert.text = arrayPrice[indexPath.row]
        
        cell.DessertView.layer.borderWidth = 4
        cell.DessertView.layer.borderColor = UIColor.black.cgColor
        cell.DessertView.layer.cornerRadius = 12
    
        // Configure the cell
    
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("ge")
       let vcDES = storyboard?.instantiateViewController(identifier: "DesertVCMenyViewController") as? DesertVCMenyViewController
        vcDES?.desertNAme = arrayDesert[indexPath.row]
        vcDES?.imageDesert =  UIImage(named: arrayDesert[indexPath.row])!
        self.navigationController?.pushViewController(vcDES!, animated: true)
    }

    

}
