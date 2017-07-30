//
//  MainVC.swift
//  TacoPOP
//
//  Created by Apostolos Chalkias on 30/07/2017.
//  Copyright © 2017 Apostolos Chalkias. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {

    // MARK: IBOutlets
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var logoImgView: HeaderImageView!
    
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Add Drop shadow to the header view
        headerView.addDropShadow()
        
        //Set the dataservice delegate
        ds.delegate = self
        
        //Load the data and shufle them
        ds.loadDelictiousTacoData()
        ds.tacoArray.shuffle()
        
        //Set the collection view delegate and datasource
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //Old way of set the nib to extension
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        
        
        collectionView.register(TacoCell.self)
        
        logoImgView.shake()
        
        
        //Set the imageView tap gesture
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(MainVC.tapDetected))
        singleTap.numberOfTapsRequired = 1 // you can change this value
        logoImgView.isUserInteractionEnabled = true
        logoImgView.addGestureRecognizer(singleTap)
        
        
    }


    // MARK: DataServiceDelegate Functions
    
    func deliciousTacoDataLoaded() {
        print("Delicious data loaded!")
        collectionView.reloadData()
    }

   // MARK: IBActions
    
    
    func tapDetected() {
       logoImgView.shake()
    }


}

// MARK: Extensions

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //Return the tacoarray from the dataservices
        return ds.tacoArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Old way
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
//            //Call configureCell function and pass the taco of the indexpath
//            cell.configureCell(taco: ds.tacoArray[indexPath.row])
//            //Return the configured cell
//            return cell
//        } else {
//            return UICollectionViewCell() //Return an empty cell
//        }
        
        //New way
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
    
    
    
    
    
    
    
}
