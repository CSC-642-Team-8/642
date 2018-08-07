//
//  WineNotViewController.swift
//  Super Spork
//
//  Created by Amanda Robinson on 8/4/18.
//  Copyright © 2018 Amanda Robinson. All rights reserved.
//

import UIKit

class WineNotViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var wineNotCollectionView: UICollectionView!
    
    var recBevImagesArray = [UIImage(named: "recmeal1"),UIImage(named: "recmeal2"),UIImage(named: "recmeal3"),UIImage(named: "recmeal4"),UIImage(named: "recmeal5")]
    var recBevTextArray = ["Drink Set 1", "Drink Set 2", "Drink Set 3", "Drink Set 4", "Drink Set 5"]
    
    var recBevCheckboxArray = [UIImage(named: "checked box"),UIImage(named: "unchecked box"),UIImage(named: "unchecked box"),UIImage(named: "unchecked box"),UIImage(named: "unchecked box")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wineNotCollectionView.delegate = self
        wineNotCollectionView.dataSource = self
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recBevImagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:RecBeverageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecBeverageCollectionViewCell", for: indexPath) as! RecBeverageCollectionViewCell
        cell.recBevImage.image = recBevImagesArray[indexPath.row]
        cell.recBevName.text = recBevTextArray[indexPath.row]
        cell.revBevCheckbox.image = recBevCheckboxArray[indexPath.row]
        
        return cell
    }



}
