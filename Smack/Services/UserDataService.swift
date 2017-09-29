//
//  UserDataService.swift
//  Smack
//
//  Created by The Guest Family on 9/28/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    // Can be read publicly, but set privately only this file can modify var id
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avaterName: String) {
        self.avatarName = avaterName
    }
    
}
