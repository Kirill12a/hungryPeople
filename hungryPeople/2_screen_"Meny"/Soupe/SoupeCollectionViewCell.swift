
//  Created by Kirill Drozdov on 09.04.2021.
//

import UIKit

class SoupeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var SoupeImage: UIImageView!
    @IBOutlet weak var SoupeName: UILabel!
    @IBOutlet weak var SoupePrice: UILabel!
    @IBOutlet weak var SoupWeight: UILabel!
    @IBOutlet weak var SendProductInTrashOutlet: UIButton!
    
    @IBOutlet weak var content: UIView!
    
    
    
    @IBAction func SendProductInTrash(_ sender: Any) {
        
    }
    
}
