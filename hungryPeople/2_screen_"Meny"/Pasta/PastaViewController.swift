//
//  PastaViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 13.04.2021.
//

import UIKit

class PastaViewController: UIViewController {

    @IBOutlet weak var PastaLabel: UILabel!
    @IBOutlet weak var PastaImage: UIImageView!
    
    var PIZName = ""
    var PIZImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PastaLabel.text = PIZName
        PastaImage.image = PIZImage
    }
    


}
