//
//  StripeView.swift
//  PatternView
//
//  Created by Kyle Somers on 7/19/17.
//  Copyright © 2017 Kyle Somers. All rights reserved.
//

import UIKit

public class StripeView: UIView {
    
    var stripeSetWidth : CGFloat = 0
    var viewForRotation = UIView()
    
    public func setup(with stripes : [Stripe], rotationAngleFromHorizontalInDegrees : CGFloat){
        
        
        self.clipsToBounds = true
        
        //remove all subviews in case it's getting redrawn

        self.deconstructAndRebuildView()
        
        
        for aStripe in stripes{
            stripeSetWidth += aStripe.thickness
        }
        
        var largestPossibleDimension : CGFloat = self.frame.height > self.frame.width ? self.frame.height : self.frame.width
        
        //Multiplying by basically the square root of two in case the stack gets rotated 45 degrees and needs to fill in to the corners
        largestPossibleDimension *= 1.5
        
        
        

        //Add in the stripes
        var currentWidthOfStripeStack : CGFloat = 0

        while currentWidthOfStripeStack < largestPossibleDimension{
            for aStripe in stripes{
                let newStripeView = UIView(frame: CGRect(x: 0, y: currentWidthOfStripeStack, width: largestPossibleDimension, height: aStripe.thickness))
                newStripeView.backgroundColor = aStripe.color
                viewForRotation.addSubview(newStripeView)
                //viewForRotation.insertSubview(newStripeView, at: 0)
                currentWidthOfStripeStack += aStripe.thickness
                
            }
            
        }
        
        //rotate view
        viewForRotation.frame = CGRect(x: 0, y: 0, width: largestPossibleDimension, height: currentWidthOfStripeStack)
        viewForRotation.frame.setCenter(CGPoint(x: self.frame.width / 2, y: self.frame.height / 2))

        viewForRotation.transform = CGAffineTransform(rotationAngle: rotationAngleFromHorizontalInDegrees * CGFloat.pi / 180 * -1)

        
        
        
        
    }
    
    func deconstructAndRebuildView(){
        
        viewForRotation.removeAllSubviews()
        viewForRotation.removeFromSuperview()
        
        viewForRotation = UIView()
        
        self.addSubview(viewForRotation)
        self.sendSubview(toBack: viewForRotation)
        

    }
    
    



}
