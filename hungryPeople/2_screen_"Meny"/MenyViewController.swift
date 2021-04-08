//
//  MenyViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 08.04.2021.
//

import UIKit

class MenyViewController: UIViewController {
    
    @IBOutlet weak var soupeV: UIButton!
    @IBOutlet weak var pizzaV: UIButton!
    @IBOutlet weak var drinksV: UIButton!
    @IBOutlet weak var pastaV: UIButton!
    @IBOutlet weak var desertV: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        settingsViewElement(soupeV: soupeV, pizzaV: pizzaV, drinksV: drinksV, pastaV: pastaV, desertV: desertV)
    
    }
    
    
    func settingsViewElement(soupeV: UIButton, pizzaV: UIButton, drinksV: UIButton, pastaV: UIButton, desertV: UIButton){
        soupeV.layer.cornerRadius = 30
        pizzaV.layer.cornerRadius = 30
        drinksV.layer.cornerRadius = 30
        pastaV.layer.cornerRadius = 30
        desertV.layer.cornerRadius = 30
    }
    
    
    
     //MARK: Actions
    
    @IBAction func soupeBT(_ sender: Any) {
    }
    @IBAction func pizzaBT(_ sender: Any) {
    }
    @IBAction func drinksBT(_ sender: Any) {
    }
    @IBAction func pastaBT(_ sender: Any) {
    }
    @IBAction func desertBT(_ sender: Any) {
    }
    
    //https://www.youtube.com/watch?v=ZSqEUFZOIzc
    
    
    
    
    
    
}
