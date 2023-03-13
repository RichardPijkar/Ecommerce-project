//
//  ViewController2.swift
//  Ecommerce
//
//  Created by AkashSir.com on 27/01/23.
//

import UIKit
import Alamofire


class ViewController2: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBAction func loginbtn(_ sender: Any) {
        let url = "https://akashsir.in/myapi/ecom1/api/api-login.php"
        let param:Parameters = [
            "user_email":txt1.text!,
            "user_password":txt2.text!,
            ]
        AF.request(url,method: .post,parameters: param).responseJSON{(response) in if case .success(_) = response.result{
            print(response)
        }}
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
