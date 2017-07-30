//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Apostolos Chalkias on 30/07/2017.
//  Copyright © 2017 Apostolos Chalkias. All rights reserved.
//

import UIKit

//Create a protocol limited to type class
protocol NibLoadableView: class {}

//Create an extension limited to type UIView
extension NibLoadableView where Self: UIView {
    //Return the nib name
    static var nibName:String {
        return String(describing: self)
    }
}
