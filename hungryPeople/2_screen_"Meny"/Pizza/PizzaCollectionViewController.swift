
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit



class PizzaCollectionViewController: UICollectionViewController {
    
    var arrayPizza = ["324","540","542","653","542","753","341","521","521","314","530","526"]
    var arrayPizzaName = ["Мексиканская","Додо","Мясная","Ветчина","Маргарита","Гавайская","Сырная","Супемясная","Двойная Пеперони","Пеперони", "Песто","Цезарь"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell2")
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayPizza.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celll23", for: indexPath) as! PizzaCollectionViewCell
        
        // Configure the cell
        
        cell.PizzaName.text = arrayPizzaName[indexPath.row]
        cell.PizzaImage.image = UIImage(named: arrayPizzaName[indexPath.row])
        cell.PizzaPrice.text = arrayPizza[indexPath.row] + "₽"
        cell.PizzaView.layer.borderColor = UIColor.black.cgColor
        cell.PizzaView.layer.borderWidth = 3
     
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(identifier: "Pizza_2_ViewController") as? Pizza_2_ViewController
        
        vc?.namePz = arrayPizzaName[indexPath.row]
        vc?.imagePz = UIImage(named: arrayPizzaName[indexPath.row])!
        
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
