//
//  Pizza_2_ViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 13.04.2021.
//

import UIKit

class Pizza_2_ViewController: UIViewController {

    @IBOutlet weak var Pizza_2_Label: UILabel!
    @IBOutlet weak var Pizza_2_Image: UIImageView!
    
    
    var namePz = ""
    var imagePz = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Pizza_2_Label.text = namePz
        Pizza_2_Image.image = imagePz

        // Do any additional setup after loading the view.
    }
    

   
}
