
//  Created by Kirill Drozdov on 13.04.2021.
//

import UIKit

class Pizza_2_ViewController: UIViewController {

    @IBOutlet weak var Pizza_2_Label: UILabel!
    @IBOutlet weak var Pizza_2_Image: UIImageView!
    @IBOutlet weak var Pizza_2_Button: UIButton!
    
    
    var namePz = ""
    var imagePz = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Pizza_2_Label.text = namePz
        Pizza_2_Image.image = imagePz

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonPushDataTrash(_ sender: Any) {
        print("ты добавил \(Pizza_2_Label.text!) в корзину")
    }
    
   
}
