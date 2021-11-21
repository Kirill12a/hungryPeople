
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit

class PizzaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var PizzaImage: UIImageView!
    @IBOutlet weak var PizzaName: UILabel!
    @IBOutlet weak var PizzaSegCont: UISegmentedControl!
    @IBOutlet weak var PizzaPrice: UILabel!
    @IBOutlet weak var PizzaAddTrash: UIButton!
    @IBOutlet weak var PizzaView: UIView!
    
    @IBAction func PizzaAddSizeSegment(_ sender: Any) {
        
//        switch PizzaSegCont.selectedSegmentIndex {
//        case 0:
//            print("0")
//        default:
//            print("r")
//        }
        
        
    }
    
    
    @IBAction func PizzaAddBasket(_ sender: Any) {
        print("Добавлено в корзину")
    }
    
}
