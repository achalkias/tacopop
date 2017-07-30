//
//  Taco.swift
//  TacoPOP
//
//  Created by Apostolos Chalkias on 30/07/2017.
//  Copyright © 2017 Apostolos Chalkias. All rights reserved.
//

import Foundation

//Create enumarations

//Shell enum
enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

//Protein enum
enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

//Condiment enum
enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}



//Create stracture
struct Taco {
    
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: TacoProtein!
    private var _condimentId: TacoCondiment!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellId: TacoShell {
        return _shellId
    }
    
    var protainId: TacoProtein {
        return _proteinId
    }
    
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    
    init(id: Int, productName: String, shellId: Int,proteinId: Int, condimentId: Int) {
        _id = id
        _productName = productName
        
        //Taco shell
        switch shellId {
        case 2:
            _shellId = TacoShell.Corn
        default:
            _shellId = TacoShell.Flour
        }
        
        //Taco Protain
        switch proteinId {
        case 2:
            _proteinId = TacoProtein.Chicken
        case 3:
            _proteinId = TacoProtein.Brisket
        case 4:
            _proteinId = TacoProtein.Fish
        default:
            _proteinId = TacoProtein.Beef
        }
        
        //Taco Condiment
        switch shellId {
        case 2:
            _condimentId = TacoCondiment.Plain
        default:
            _condimentId = TacoCondiment.Loaded
        }
        
        
    }
    
}
