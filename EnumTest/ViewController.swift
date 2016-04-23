//
//  ViewController.swift
//  EnumTest
//
//  Created by woroninb on 23/04/16.
//  Copyright © 2016 roche. All rights reserved.
//

import UIKit

enum InformationEvent: Int {
    case About
    case Agenda
}

enum InformationVenue: Int {
    case Navigate
    case Wifi
}

enum InformationTabOLD {
    case Venue
    case Event
    case Documents
}

//Old switch
var selectedInformationTab: InformationTabOLD = .Event
var section = 1

func testEnum() {
    switch selectedInformationTab {
    case .Event:
        guard let informationCellType = InformationEvent(rawValue: section) else {
            break
        }
        
        switch informationCellType {
        case .About:
            break
        case .Agenda:
            break
        }
        
    case .Venue:
        guard let informationCellType = InformationVenue(rawValue: section) else {
            break
        }
        
        switch informationCellType {
        case .Wifi:
            break
        case .Navigate:
            break
        }
    case .Documents:
        break
    }
}
