//
//  LaunchScreenViewController.swift
//  hungryPeople
//
//  Created by Kirill Drozdov on 06.04.2021.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.hidesWhenStopped = true
        spinner.startAnimating()
        // Do any additional setup after loading the view.
    }

}
