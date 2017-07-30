//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Apostolos Chalkias on 30/07/2017.
//  Copyright © 2017 Apostolos Chalkias. All rights reserved.
//

import UIKit

//Create a protocol limited to type class
protocol ReusableView: class {}

//Create an extension of type UIView
extension ReusableView where Self: UIView {

    //Return the view reuse identifier
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}

