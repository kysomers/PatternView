//
//  RegularPolkaDotView.swift
//  PatternView
//
//  Created by Kyle Somers on 7/28/17.
//  Copyright © 2017 Kyle Somers. All rights reserved.
//

import UIKit

class RegularPolkaDotView: UIView {
    
    func setup(polkaDotAmount : PolkaDotAmount, polkaDotDiameter : CGFloat, backgroundColor : UIColor, dotColor : UIColor, offset : CGPoint?, dotsAreDiagonal : Bool){
        
        
        self.removeAllSubviews()
        self.clipsToBounds = true
 
        
        //Set to 100 to ensure padding
        var xIndex : CGFloat = -100
        var yIndex : CGFloat = -100
        
        self.backgroundColor = backgroundColor
        
        var spacing : CGFloat = 0
        
        switch polkaDotAmount{
        case .aFew:
            spacing = polkaDotDiameter + 60
            
        case .mediumAmount:
            spacing = polkaDotDiameter + 30
            
        case .lots:
            spacing = polkaDotDiameter + 10
            
        }
        
        var counter = 0

        while yIndex < frame.height + 100{
            print("here1")
            
            while xIndex < frame.width + 100{
                
                

                self.addSubview(makePolkaDotWithCenter(at: CGPoint(x:xIndex, y:yIndex), diameter: polkaDotDiameter, color: dotColor))
                
                xIndex += spacing
                
                
            }
            
            xIndex = -100

            counter += 1

            if dotsAreDiagonal && counter % 2 == 1{
                xIndex -= spacing / 2
            }
            
            yIndex += spacing
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
