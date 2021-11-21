
//  Created by Kirill Drozdov on 13.04.2021.
//

import UIKit

class DrinksViewController: UIViewController {

    @IBOutlet weak var DrinksOutlet: UILabel!
    @IBOutlet weak var ImageDrinks: UIImageView!
    @IBOutlet weak var DrinksButton: UIButton!
    
    var iamgeDR = UIImage()
    var nameDrinks = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DrinksOutlet.text = nameDrinks
        ImageDrinks.image = iamgeDR
    }
    
    @IBAction func ADDTresh(_ sender: Any) {
        print("ты добавил в коризну \(DrinksOutlet.text!)")
    }
    
   

}
