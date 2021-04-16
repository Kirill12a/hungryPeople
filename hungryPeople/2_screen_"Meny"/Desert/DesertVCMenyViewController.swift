//
//  DesertVCMenyViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 14.04.2021.
//

import UIKit

class DesertVCMenyViewController: UIViewController {

    @IBOutlet weak var DesetrDelegateText: UILabel!
    @IBOutlet weak var DeserImageDelegate: UIImageView!
    @IBOutlet weak var DesertButton: UIButton!
    
    
    var desertNAme = ""
    var imageDesert = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DesetrDelegateText.text = desertNAme
        DeserImageDelegate.image = imageDesert

    }
    
    @IBAction func DesertPushTresh(_ sender: Any) {
        print("ты добавил в коризну товар \(DesetrDelegateText.text!)")
    }
    

}
