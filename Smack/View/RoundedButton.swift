//
//  RoundedButton.swift
//  Smack
//
//  Created by The Guest Family on 9/28/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = cornerRadius
    }
}
