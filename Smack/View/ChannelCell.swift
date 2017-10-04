//
//  ChannelCell.swift
//  Smack
//
//  Created by The Guest Family on 9/29/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var channelName: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
    
    func configureCell(channel: Channel) {
        let title = channel.channelTitle ?? ""
        channelName.text = "#\(title)"
        channelName.font = UIFont(name: "HelveticeNeue-Regular", size: 17)
        
        for id in MessageService.instance.unreadChannels {
            if id == channel.id {
                channelName.font = UIFont(name: "HelveticeNeue-Bold", size: 22)
            }
        }
    }

}
