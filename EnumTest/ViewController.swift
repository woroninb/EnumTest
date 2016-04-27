//
//  ViewController.swift
//  EnumTest
//
//  Created by woroninb on 23/04/16.
//  Copyright © 2016 roche. All rights reserved.
//

import UIKit


enum PlaceInformationRefactorTwo {

    case General, More

    enum PlaceHeader: Int {
        case Description, HowToGoHere, Hotel, CurrentWheather, InterestingPlacesNearby
        static let allGeneralHeaders = [Description, HowToGoHere, Hotel]
        static let allMoreHeraders = [CurrentWheather, InterestingPlacesNearby]
    }

    var placeValues: [PlaceHeader] {
        switch self {
        case .General:
            return PlaceHeader.allGeneralHeaders
        case .More:
            return PlaceHeader.allMoreHeraders
        }
    }
}

let selectedInformationTabFour: PlaceInformationRefactorTwo = .General
let selectedTabIndex = 1
let value = selectedInformationTabFour.placeValues[selectedTabIndex]

func testEnum() {
    switch value {
    case .Description:
        print("description")
    case .HowToGoHere:
        print("HowToGoHere")
    case .Hotel:
        print("Hotel")
    case .CurrentWheather:
        print("CurrentWheather")
    case .InterestingPlacesNearby:
        print("InterestingPlacesNearby")
    }
}
