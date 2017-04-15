//
//  TableViewController.swift
//  Localization
//
//  Created by Rustam N on 15.04.17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var briefInformationLabel: UILabel!
    
    
    
    let cellIdentifier = "Cell"
    let arrWithTitle = CreateData.getArrWithTitle()
    let arrWithBaseInfo = CreateData.getBaseInfoArr()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        
        avatarImage.image = UIImage.init(named: "avatar")
        flagImage.image = UIImage.init(named: "flag")
        fullNameLabel.text = arrWithBaseInfo[0]
        statusLabel.text = arrWithBaseInfo[1]
        briefInformationLabel.text = arrWithBaseInfo[2]

        
        
    }
}




extension String {
    public static func localize(key: String, comment: String) -> String {
        return NSLocalizedString(key, comment: comment)
    }
}

extension TableViewController {
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrWithTitle.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrWithTitle[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return NSLocalizedString(arrWithBaseInfo[section + 3], comment: "")
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as! Cell
        cell.titleLabel.text = NSLocalizedString(arrWithTitle[indexPath.section][indexPath.row],  comment: "")
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
