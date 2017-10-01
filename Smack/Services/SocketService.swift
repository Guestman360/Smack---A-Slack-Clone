//
//  SocketService.swift
//  Smack
//
//  Created by The Guest Family on 9/30/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {

    static let instance = SocketService()
    
    // Must have initializer for NSObject
    override init() {
        super.init()
    }
    
    var socket: SocketIOClient = SocketIOClient(socketURL: URL(string: BASE_URL)!)
    
    func establishConnection() {
        socket.connect()
    }
    
    func closeConnection() {
        socket.disconnect()
    }
    
    // On listens for events, emit sends messages to those connected to server
    // Function to emit (send out) channel object to server, send out channels to API, to all apps currently connected
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler) {
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    // Function to detect when channel object is created
    func getChannel(completion: @escaping CompletionHandler) {
        // Listen for event of type "chnnelCreated" this is found in API
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else { return }
            guard let channelDesc = dataArray[1] as? String else { return }
            guard let channelId = dataArray[2] as? String else { return }
            
            // After unwrapping datrray objects, create new Channel object then add to channels in MessageService singleton
            let newChannel = Channel(channelTitle: channelName, channelDescription: channelDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
}









