
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit



class DrinksCollectionViewController: UICollectionViewController {
    
    var arrayDrinks = ["Coca-Cola","Sprite","Fanta","Schweppes","FuzeTea Черный с лимоном и лемонграссом","FuzeTea Зеленый с манго и ромашкой","FuzeTea Улун малина"," Апельсиновый сок Rich","Яблочный сок","BonAqua, негаз","Какао","Морс"]
    
    var arrayPriceDrinks = ["95","95","95","95","95","95","95","145","145","55","80","90"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell3")
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayDrinks.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! DrinksCollectionViewCell
        
        cell.DrinksName.text = arrayDrinks[indexPath.row]
        cell.DrinksImage.image = UIImage(named: arrayDrinks[indexPath.row])
        cell.DrinksPrice.text = arrayPriceDrinks[indexPath.row] + "₽"
        
        cell.ViewDrinks.layer.borderWidth = 3
        cell.ViewDrinks.layer.borderColor = UIColor.black.cgColor
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vcDR  = storyboard?.instantiateViewController(identifier: "DrinksViewController") as? DrinksViewController
        
        vcDR?.iamgeDR = UIImage(named: arrayDrinks[indexPath.row])!
        vcDR?.nameDrinks = arrayDrinks[indexPath.row]
        
        self.navigationController?.pushViewController(vcDR!, animated: true)
        
    }
    
    
    
}
