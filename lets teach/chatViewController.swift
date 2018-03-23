//
//  chatViewController.swift
//  Lets Teach
//
//  Created by MacBook Air on 1/27/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit
import Firebase
import JSQMessagesViewController

class chatViewController: JSQMessagesViewController {

    var channelRef: FIRDatabaseReference?
    var channel: Channel? {
        didSet {
            title = channel?.name
        }
    }

}
