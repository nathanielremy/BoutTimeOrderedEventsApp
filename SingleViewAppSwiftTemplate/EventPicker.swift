//
//  EventPicker.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Nathaniel Remy on 2017-03-24.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import GameKit

protocol EventGame {
    var events: [[String: Any]] { get }
    
    func displayEvents()
}



struct HistoryEvents: EventGame {
    
    let events: [[String: Any]]
    
    func displayEvents() {
        //
    }
}














