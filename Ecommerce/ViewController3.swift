//
//  ViewController3.swift
//  Pods
//
//  Created by AkashSir.com on 28/01/23.
//

import UIKit
import Alamofire

class ViewController3: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var txt4: UITextField!
    @IBAction func changepaswordbtn(_ sender: Any) {
        let url = "https://akashsir.in/myapi/ecom1/api/api-change-password.php"
        let param:Parameters = [
            "user_id":txt1.text!,
            "opass":txt2.text!,
            "npass":txt3.text!,
            "cpass":txt4.text!
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
