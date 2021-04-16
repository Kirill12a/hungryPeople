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
    @IBOutlet weak var Soupe_2_AddBusket: UIButton!
    //пока не юзается
    @IBOutlet weak var Description: UILabel!
    
    
    
    var name = ""
    var image = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Soupe_2_Vc.text = "выбрал \(name)"
        Soupe_2_Image.image = image
        
    }
    
    @IBAction func addBusketAction(_ sender: Any) {
        print("Круто ты добавил корзину товар под именем \(Soupe_2_Vc.text!)")
    }
    
}
