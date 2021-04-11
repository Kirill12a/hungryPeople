//
//  PastaCollectionViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 10.04.2021.
//

import UIKit



class PastaCollectionViewController: UICollectionViewController {
    
    var arrayPasta = ["Удон с курицей ","Тяхан с курицей","Соба с курицей","Удон с говядиной","Сомен с курицей","Фунчоза с курицей","Удон со свининой","Удон с креветками","Соба с говядиной","Фунчоза с креветками","Тяхан с говядиной","Сомен с овощами"]
    var arratPastaImage = [
        UIImage(named:"20"),
        UIImage(named:"21"),
        UIImage(named:"22"),
        UIImage(named:"23"),
        UIImage(named:"24"),
        UIImage(named:"25"),
        UIImage(named:"26"),
        UIImage(named:"27"),
        UIImage(named:"28"),
        UIImage(named:"29"),
        UIImage(named:"30"),
        UIImage(named:"31")
    ]
    
    
    var arrayPastaPrice =  ["319","259","319","369","319","319","349","439","369","439","299","289"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell4")
        
        // Do any additional setup after loading the view.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayPasta.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! PastaCollectionViewCell
        
        cell.PastaName.text = arrayPasta[indexPath.row]
        cell.PastaImage.image = arratPastaImage[indexPath.row]
        cell.PastaPrice.text = arrayPastaPrice[indexPath.row] + "₽"
        cell.PastaView.layer.borderColor = UIColor.black.cgColor
        cell.PastaView.layer.borderWidth = 3
        
        // Configure the cell
        
        return cell
    }
    
    
}
