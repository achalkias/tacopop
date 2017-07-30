//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Apostolos Chalkias on 30/07/2017.
//  Copyright © 2017 Apostolos Chalkias. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell,NibLoadableView,Shakeable {

 
    // MARK: IBOutlets
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    // MARK: Variables
    var taco: Taco!
    
    
    func configureCell(taco: Taco) {
        //Set the taco object
        self.taco = taco
        
        //Get the image from protainid enum raw value
        tacoImage.image = UIImage(named: taco.protainId.rawValue)
        
        //Set the taco name
        tacoLabel.text = taco.productName
        
    }

}
