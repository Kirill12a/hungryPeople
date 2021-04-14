//
//  Soupe2ViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 13.04.2021.
//

import UIKit

class Soupe2ViewController: UIViewController {

    @IBOutlet weak var Soupe_2_Vc: UILabel!
    @IBOutlet weak var Soupe_2_Image: UIImageView!
    
    
    
    var name = ""
    var image = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Soupe_2_Vc.text = " Ты выбрал \(name)"
        Soupe_2_Image.image = image
        
    }
  
}
