//
//  DrinksViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 13.04.2021.
//

import UIKit

class DrinksViewController: UIViewController {

    @IBOutlet weak var DrinksOutlet: UILabel!
    @IBOutlet weak var ImageDrinks: UIImageView!
    
    var iamgeDR = UIImage()
    var nameDrinks = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DrinksOutlet.text = nameDrinks
        ImageDrinks.image = iamgeDR
    }
    

   

}
