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
    var events: [[String: Any]]? { get }
    
    func displayEvents(label1: UILabel, label2: UILabel, label3: UILabel, label4: UILabel, nextRound: UIButton) throws
}



struct HistoryEvents: EventGame {
    
    let events: [[String: Any]]?
    
    func displayEvents(label1: UILabel, label2: UILabel, label3: UILabel, label4: UILabel, nextRound: UIButton) throws {
        
        nextRound.isHidden = true
        
        if let events = events {
            
            var index1 = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
            var index2 = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
            var index3 = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
            var index4 = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
            
            while index1 == index2 || index1 == index3 || index1 == index4 || index2 == index3 || index2 == index4 || index3 == index4 {
                
                index1 = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
                index2 = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
                index3 = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
                index4 = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
            }

            
            if let firstLabelEvent = events[index1]["Event"] as? String, let secondLabelEvent = events[index2]["Event"] as? String, let thirdLabelEvent = events[index3]["Event"] as? String, let fourthLabelEvent = events[index4]["Event"] as? String  {
                
                if let firstLabelTag = events[index1]["Year"] as? Int, let secondLabelTag = events[index2]["Year"] as? Int, let thirdLabelTag = events[index3]["Year"] as? Int, let fourthLabelTag = events[index4]["Year"] as? Int {
                    
                    label1.text = firstLabelEvent
                    label1.tag = firstLabelTag
                    
                    label2.text = secondLabelEvent
                    label2.tag = secondLabelTag
                    
                    label3.text = thirdLabelEvent
                    label3.tag = thirdLabelTag
                    
                    label4.text = fourthLabelEvent
                    label4.tag = fourthLabelTag

                }
            }
        } else {
            throw GameError.undefinedEvents
    }
  }
}

let historicalEvents = HistoryEvents(events: [
    ["Event": "Apollo 11 lands on the moon", "Year": 1969],
    ["Event": "Berlin wall was built", "Year": 1961],
    ["Event": "The fall of the Berlin Wall", "Year": 1989],
    ["Event": "End of World War 2", "Year": 1945],
    ["Event": "Beginning of World War 2", "Year": 1939],
    ["Event": "Beginning of World War 1", "Year": 1914],
    ["Event": "End of World War 1", "Year": 1918],
    ["Event": "The 19th amendment", "Year": 1920],
    ["Event": "The official end to slavery in America", "Year": 1865],
    ["Event": "Martin Luther King Jr delivered his speech", "Year": 1963],
    ["Event": "Rosa Parks refuses to give up her seat on a bus", "Year": 1955],
    ["Event": "Jackie Robinson breaks the the Major League Baseball color barrier", "Year": 1947],
    ["Event": "Al-Qaeda attack on the twin towers in New York", "Year": 2001],
    ["Event": "Death of Osama bin Laden", "Year": 2011],
    ["Event": "Barack Obama is elected as the first black president", "Year": 2008],
    ["Event": "Discovery of the Mariana Trench", "Year": 1875],
    ["Event": "USSR launches the first human to space", "Year": 1960],
    ["Event": "Karl Benz creates the first car", "Year": 1885],
    ["Event": "Formation of the European Union", "Year": 1993],
    ["Event": "Formation of NATO", "Year": 1949],
    ["Event": "Release of the first computer animated film", "Year": 1995],
    ["Event": "First ever flight in a plane", "Year": 1903],
    ["Event": "Creation of the World Wide Web", "Year": 1990],
    ["Event": "Creation of the first computer", "Year": 1946],
    ["Event": "Sinking of the RMS Titanic", "Year": 1912]
    ])














