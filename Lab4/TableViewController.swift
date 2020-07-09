//
//  TableViewController.swift
//  Lab4
//
//  Created by user165333 on 7/1/20.
//  Copyright © 2020 n01324321 Sudhir. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //my data
    let elements = ["Sudhir","Karan","Kajol","Sheela","Karan","Ram","Samir","Sney","Gokul","Riya","Ramesh","Suresh","Prem","Shivam","Anisha","Ajali"]
    let myiamges = [ #imageLiteral(resourceName: "s8") , #imageLiteral(resourceName: "s5") , #imageLiteral(resourceName: "s4") , #imageLiteral(resourceName: "s3") , #imageLiteral(resourceName: "s7") , #imageLiteral(resourceName: "s6") ]
    let mystatus = [ #imageLiteral(resourceName: "add-user") , #imageLiteral(resourceName: "follow") , #imageLiteral(resourceName: "remove-user") ]
    let myLocation = ["NY","LN","TO","NKG","Del","Van"]
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
    }

//for cell
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   //for row element
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return elements.count
    }
    
    //for row height
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     return 100
    }

     //for row congfig.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "Mycell", for: indexPath) as? TableViewCell

        cell?.contentView.layer.cornerRadius = (cell?.contentView.frame.height)!/2
        cell?.myLabel.text = elements[Int.random(in: 0...15)]
        cell?.myImage.image = myiamges[Int.random(in: 0...5)]
        cell?.mystatusimage.image = mystatus[Int.random(in: 0...2)]
        cell?.myLocation.text = myLocation[Int.random(in: 0...5)]
        return cell!
    }
    


}
