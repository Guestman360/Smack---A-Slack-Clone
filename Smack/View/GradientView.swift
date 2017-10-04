//
//  GradientView.swift
//  Smack
//
//  Created by The Guest Family on 9/27/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    // IBDesignable is able to work in Storyboard & IBInspectable var can change inside Storyboards
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }

    // For reference, setNeedsLayout calls layoutSubviews everytime it changes so must override
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
