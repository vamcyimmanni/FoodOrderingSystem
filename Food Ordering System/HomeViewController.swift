//
//  HomeViewController.swift
//  Food Ordering System
//
//  Created by Immani, Vamsi (ES) on 12/19/18.
//  Copyright © 2018 Immani, Vamsi (ES). All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let foodItems = ["SNACKS", "PIZZA", "NONVEG", "BEVERAGES", "FRENCHFRIES", "HOTDOG", "GAR", "POT", "FRIED"]
    let foodItemImages = ["snacks", "pizza", "nonveg", "bev", "french", "hdog", "gar", "pot", "fried"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return foodItems.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemsCell", for: indexPath) as! MenuItemsCell
        cell.layer.cornerRadius = 10
        //cell.layer.masksToBounds = false
        let shadowPath2 = UIBezierPath(rect: cell.bounds)
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(3.0))
        cell.layer.shadowOpacity = 0.5
        cell.layer.shadowPath = shadowPath2.cgPath
        
        cell.imageView?.image = UIImage(named: foodItemImages[indexPath.section])
        cell.foodItemNameLabel.text = foodItems[indexPath.section]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0{
            return 0
        }
        else{
            return 20
        }
    }
    
}
