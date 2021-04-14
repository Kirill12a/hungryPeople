//
//  DesertViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 13.04.2021.
//

import UIKit

class DesertViewController: UIViewController {
    
    @IBOutlet weak var DesertLabel: UILabel!
    @IBOutlet weak var DesertImage: UIImageView!
    
    var DesertName = ""
    var DesertImageVC_2OUT = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DesertLabel.text = DesertName
        DesertImage.image = DesertImageVC_2OUT
        
    }
  

}
