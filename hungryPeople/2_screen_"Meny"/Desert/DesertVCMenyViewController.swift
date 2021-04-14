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
   
    
    var desertNAme = ""
    var imageDesert = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DesetrDelegateText.text = desertNAme
        DeserImageDelegate.image = imageDesert

    }
    


}
