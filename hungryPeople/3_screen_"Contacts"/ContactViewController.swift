//
//  ContactViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 11.04.2021.
//

import UIKit

class ContactViewController: UIViewController {
    
    var userStructSend = UserSend()

     //MARK: Image
    @IBOutlet weak var image_1: UIImageView!
    @IBOutlet weak var image_2: UIImageView!
    @IBOutlet weak var image_3: UIImageView!
    @IBOutlet weak var image_4: UIImageView!
    
     //MARK: label
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var phoneOrgLabel: UILabel!
    
     //MARK: TF
    
    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var EmailTF: UITextField!
    @IBOutlet weak var PhoneTF: UITextField!
    @IBOutlet weak var MessageTF: UITextField!
    
     //MARK: Button outlet
    
    @IBOutlet weak var SendDataOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
buttonSettingsView(button: SendDataOutlet)
    }
    
     //MARK: Button action
    @IBAction func SendDataAction(_ sender: Any) {
        var userArraSend = [String]()
        
       
        
        print("\(NameTF.text!), \(EmailTF.text!), \(PhoneTF.text!), \(MessageTF.text!)")
        
    }
    
     //MARK: Settings Button View
    func buttonSettingsView(button: UIButton){
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.yellow.cgColor
        
        button.layer.cornerRadius = 13
    }
   

}
