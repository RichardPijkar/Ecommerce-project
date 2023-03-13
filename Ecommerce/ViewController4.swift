//
//  ViewController4.swift
//  Ecommerce
//
//  Created by AkashSir.com on 13/02/23.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController4: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var catergoty_id = [String]()
    var category_name = [String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catergoty_id.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelview.dequeueReusableCell(withIdentifier: "mycell")
        cell?.textLabel?.text = catergoty_id[indexPath.row]
        cell?.detailTextLabel?.text = category_name[indexPath.row]
        return cell!
    }
    

    @IBOutlet weak var tabelview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabelview.delegate = self
        self.tabelview.dataSource = self
        let api = "https://akashsir.in/myapi/ecom1/api/api-view-category.php"
        AF.request(api,method: .get).responseJSON{(response) in switch response.result{
        case .success:
            print(response.result)
            let result = try?JSON(data: response.data!)
            let resultarry = result!["category_list"]
            self.catergoty_id.removeAll()
            self.category_name.removeAll()
            for i in resultarry.arrayValue{
                print(i)
                let user_id = i["category_id"].stringValue
                self.catergoty_id.append(user_id)
                print(user_id)
                let user_name = i["category_name"].stringValue
                self.category_name.append(user_name)
                print(user_name)
                
            }
            self.tabelview.reloadData()
            break
        case .failure(_):
            print(response.error)
        }
        }
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
