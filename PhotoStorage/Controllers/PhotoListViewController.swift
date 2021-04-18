//
//  ViewController.swift
//  PhotoStorage
//
//  Created by Charlie Botello on 4/18/21.
//

import UIKit

class PhotoListViewController: UITableViewController {

    var imagesArray: [String] = ["BlueLogo", "CreamLogo", "WhiteLogo"]
    var imageText: [String] = ["Blue", "cream", "White"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                    }


    //MARK: - Tableviw Datasource Method
    // Return the number of rows for the table.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    
    // Provide a cell object for each row.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        
        cell = tableView.dequeueReusableCell(withIdentifier: Constant.imageCell)! as UITableViewCell
        
        let image: UIImage = UIImage(named: imagesArray[indexPath.row])!
        cell.imageView?.image = image
        cell.textLabel?.text = imageText[indexPath.row]
        return cell
        
    }
}

