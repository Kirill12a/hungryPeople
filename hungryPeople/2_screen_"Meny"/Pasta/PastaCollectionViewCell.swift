
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit

class PastaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var PastaName: UILabel!
    @IBOutlet weak var PastaImage: UIImageView!
    @IBOutlet weak var PastaPrice: UILabel!
    @IBOutlet weak var PastaAddBasket: UIButton!
    
    @IBOutlet weak var PastaView: UIView!
    
    
    
    
    @IBAction func PastaPushDataBaseket(_ sender: Any) {
    }
}
