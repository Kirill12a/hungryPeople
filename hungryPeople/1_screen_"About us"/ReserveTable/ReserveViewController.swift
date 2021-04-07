//
//  ReserveViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 07.04.2021.
//

import UIKit

class ReserveViewController: UIViewController {
    
    
    @IBOutlet weak var ButtonSettings: UIButton!
    @IBOutlet weak var ReserveTable: UILabel!
    @IBOutlet weak var Reserve: UILabel!
    
    @IBOutlet weak var NameReserve: UITextField!
    @IBOutlet weak var EmailReserve: UITextField!
    @IBOutlet weak var PhoneReserve: UITextField!
    @IBOutlet weak var PeopleReserve: UITextField!
    @IBOutlet weak var DateReserve: UITextField!
    @IBOutlet weak var TimeReserve: UITextField!
    
    
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTF()
    }
    
    func saveData(){
           var name = NameReserve.text
           var email = EmailReserve.text
           var phone = PhoneReserve.text
           var people = PeopleReserve.text
           var date = DateReserve.text
           var time = TimeReserve.text
           
           Reserve.text = "Your table is reserve for \(time!) time"
       }

    @IBAction func SendDataReserve(_ sender: Any) {
        saveData()
    }
    
    
    func settingsTF(){
        NameReserve.layer.cornerRadius = 20
        EmailReserve.layer.cornerRadius = 20
        PhoneReserve.layer.cornerRadius = 20
        PeopleReserve.layer.cornerRadius = 20
        DateReserve.layer.cornerRadius = 20
        TimeReserve.layer.cornerRadius = 20
        ButtonSettings.layer.cornerRadius = 20
    }
    
    
    
}
