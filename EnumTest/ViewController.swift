//
//  ViewController.swift
//  EnumTest
//
//  Created by woroninb on 23/04/16.
//  Copyright © 2016 roche. All rights reserved.
//

import UIKit

enum GeneralInfo: Int {
    case Description
    case HowToGoHere
    case Hotel
}

enum MoreInfo: Int {
    case CurrentWheather
    case InterestingPlacesNearby
}

enum PlaceInformation: Int {
    case General
    case More
}

let selectedTabIndex = 0
let tableSection = 0
let selectedInformationTab: PlaceInformation = PlaceInformation(rawValue: selectedTabIndex)!

func testEnum() {
    switch selectedInformationTab {
    case .General:
        guard let informationCellType = GeneralInfo(rawValue: tableSection) else {
            break
        }
        
        switch informationCellType {
        case .Description:
            break
        case .HowToGoHere:
            break
        case .Hotel:
            break
        }
        
    case .More:
        guard let informationCellType = MoreInfo(rawValue: tableSection) else {
            break
        }
        
        switch informationCellType {
        case .CurrentWheather:
            break
        case .InterestingPlacesNearby:
            break
        }
    }
}
