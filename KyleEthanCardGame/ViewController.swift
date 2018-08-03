//
//  ViewController.swift
//  KyleEthanCardGame
//
//  Created by Kyle on 8/1/18.
//  Copyright © 2018 Kyle. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var array = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        array = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"]
        // Do any additional setup after load ing the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        
        var button = cell.viewWithTag(1) as! UILabel
        button.text = array[indexPath.row]
        
        return cell
    }

}

