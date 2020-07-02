//
//  CollectionViewController.swift
//  Lab4
//
//  Created by user165333 on 7/1/20.
//  Copyright © 2020 n01324321 Sudhir. All rights reserved.
//

import UIKit
import Foundation
//private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    let elements = ["Sudhir","Karan","Kajol","Sheela","Karan","Ram","Samir","Sney","Gokul","Riya","Ramesh","Suresh","Prem","Shivam","Anisha","Ajali"]
    let myiamges = [ #imageLiteral(resourceName: "s8") , #imageLiteral(resourceName: "s5") , #imageLiteral(resourceName: "s4") , #imageLiteral(resourceName: "s3") , #imageLiteral(resourceName: "s7") , #imageLiteral(resourceName: "s6") ]

    override func viewDidLoad() {
        super.viewDidLoad()

       

        // Register cell classes
        self.collectionView!.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        
        self.collectionView.backgroundColor = .yellow

    }
//for number of section
   override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

//for number of items
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 21
    }
    //for cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Customcell", for: indexPath) as? CollectionViewCell
        cell?.layer.cornerRadius = 15
        cell?.myLabel.text = elements[Int.random(in: 0...15)]
        cell?.myImage.image = myiamges[Int.random(in: 0...5)]
        return cell!
    }


}
