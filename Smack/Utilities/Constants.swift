//
//  Constants.swift
//  Smack
//
//  Created by The Guest Family on 9/28/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import Foundation

// Of type closure, pass in true or false
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://smackappchat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"