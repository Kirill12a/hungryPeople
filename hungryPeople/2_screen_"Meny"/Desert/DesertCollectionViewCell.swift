//
//  DesertCollectionViewCell.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit

class DesertCollectionViewCell: UICollectionViewCell {
    
   
    
    @IBOutlet weak var DesertView: DesertCollectionViewCell!
    
    
    @IBOutlet weak var DesertName: UILabel!
    @IBOutlet weak var DesertImage: UIImageView!
    @IBOutlet weak var DesertPrice: UILabel!
    @IBOutlet weak var DesertButtonOutlet: UIButton!
    
    @IBAction func DesertButtonAction(_ sender: Any) {
        
    }

}
