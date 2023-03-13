//
//  ViewController.swift
//  Ecommerce
//
//  Created by AkashSir.com on 27/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func signup(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let sv = main.instantiateViewController(withIdentifier: "sc")
        self.present(sv,animated: true)
    }
    
    @IBAction func loginbtn(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let sv1 = main.instantiateViewController(withIdentifier: "sc1")
        self.present(sv1,animated: true)
    }
    
    @IBAction func changepasswordbtn(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let sv2 = main.instantiateViewController(withIdentifier: "sc2")
        self.present(sv2,animated: true)
    }
    
    @IBAction func categorybtn(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let sv5 = main.instantiateViewController(withIdentifier: "sc5")
        self.present(sv5,animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

