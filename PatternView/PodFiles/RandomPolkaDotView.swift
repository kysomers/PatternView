//
//  PolkaDotView.swift
//  PatternView
//
//  Created by Kyle Somers on 7/19/17.
//  Copyright © 2017 Kyle Somers. All rights reserved.
//

import UIKit

class RandomPolkaDotView: UIView {
    
    //different sizes of polka dots : small, medium, large, and mixed
    //different amounts of polks dots: few, some, lots
    //background color
    //dot color
    //random seed
    
    func setup(polkaDotAmount : PolkaDotAmount, polkaDotSize : PolkaDotSize, backgroundColor : UIColor, dotColor : UIColor, randomSeed : Int?){
        
        self.clipsToBounds = true
        if let randomSeed = randomSeed{
            srand48(randomSeed)

        }
        
        
    }
        


}
