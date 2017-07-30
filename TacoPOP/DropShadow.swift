//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Apostolos Chalkias on 30/07/2017.
//  Copyright © 2017 Apostolos Chalkias. All rights reserved.
//

import UIKit


//Create a protocol for the drop shadow

protocol  DropShadow {}

//Define the extension
//Extend the extension to a certain type. In this case UIView
extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        //implemetation
        
        //Set the shadow color
        layer.shadowColor = UIColor.black.cgColor
        //Set the shadow opacity
        layer.shadowOpacity = 0.7
        //Set the shadow offset
        layer.shadowOffset = CGSize.zero
        //Set the shadow radius
        layer.shadowRadius = 5
    }
    
}
