//
//  RegularPolkaDotView.swift
//  PatternView
//
//  Created by Kyle Somers on 7/28/17.
//  Copyright © 2017 Kyle Somers. All rights reserved.
//

import UIKit

class RegularPolkaDotView: UIView {
    
    func setup(polkaDotAmount : PolkaDotAmount, polkaDotSize : PolkaDotSize, backgroundColor : UIColor, dotColor : UIColor/*, offset : CGPoint?*/){
        self.removeAllSubviews()
        self.clipsToBounds = true
 
        
        //Set to 100 to ensure padding
        var xIndex : CGFloat = -100
        var yIndex : CGFloat = -100
        
        self.backgroundColor = backgroundColor
        
        
        while yIndex < frame.height + 100{
            print("here1")
            while xIndex < frame.width + 100{
                
//                switch polkaDotAmount{
//                case .aFew:
//                case .mediumAmount:
//                case .lots:
//                }
                print("here2")

                self.addSubview(makePolkaDotWithCenter(at: CGPoint(x:xIndex, y:yIndex), diameter: 40, color: dotColor))
                
            
                xIndex += 60
                
            }
            xIndex = -100
            
            yIndex += 60
            if yIndex > frame.height + 100 {
                print(yIndex)
            }

        }
 
        
    }
    
    func makePolkaDotWithCenter(at center:CGPoint, diameter:CGFloat, color : UIColor) -> UIView{
        
        var polkaDotView = UIView()
        polkaDotView.backgroundColor = color
        polkaDotView.frame.size = CGSize(width: diameter, height: diameter)
        polkaDotView.frame.setCenter(center)
        polkaDotView.clipsToBounds = true
        polkaDotView.layer.cornerRadius = diameter / 2
        
        return polkaDotView
    }

}
