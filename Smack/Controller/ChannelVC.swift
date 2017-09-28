//
//  ChannelVC.swift
//  Smack
//
//  Created by The Guest Family on 9/27/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

}
