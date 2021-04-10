//
//  DrinksCollectionViewCell.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit

class DrinksCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ViewDrinks: UIView!
    
    @IBOutlet weak var DrinksName: UILabel!
    @IBOutlet weak var DrinksImage: UIImageView!
    @IBOutlet weak var DrinksPrice: UILabel!
    @IBOutlet weak var DrinksPushButtonOutlet: UIButton!
    
    @IBAction func DrinksPushDataAction(_ sender: Any) {
    }
}
