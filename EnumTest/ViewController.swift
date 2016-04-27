//
//  ViewController.swift
//  EnumTest
//
//  Created by woroninb on 23/04/16.
//  Copyright © 2016 roche. All rights reserved.
//

import UIKit


enum PlaceInformationRefactorOne {

    enum PlaceInformation: Int {
        case General
        case More
    }

    enum PlaceHeader {
        case Description, HowToGoHere, Hotel, CurrentWheather, InterestingPlacesNearby
        static let allGeneralHeaders = [Description, HowToGoHere, Hotel]
        static let allMoreHeraders = [CurrentWheather, InterestingPlacesNearby]
    }

    case Header(selectedTab: PlaceInformation, section: Int)
    var value: PlaceHeader {
        switch self {
        case .Header(let tab, let sectionIndex):
            if(tab == .General) {
                return PlaceHeader.allGeneralHeaders[sectionIndex]
            } else {
                return PlaceHeader.allMoreHeraders[sectionIndex]
            }
        }
    }
}

let selectedTabIndex = 0
let tableSection = 0
let selectedInformationTab: PlaceInformationRefactorOne = PlaceInformationRefactorOne.Header(selectedTab: PlaceInformationRefactorOne.PlaceInformation(rawValue: selectedTabIndex)!, section: tableSection)
let header = selectedInformationTab.value

func testEnum() {
    let selectedInformationTab: PlaceInformationRefactorOne = PlaceInformationRefactorOne.Header(selectedTab: PlaceInformationRefactorOne.PlaceInformation(rawValue: selectedTabIndex)!, section: tableSection)
    let header = selectedInformationTab.value

    switch header {
    case PlaceInformationRefactorOne.PlaceHeader.Description:
        print("desription")
    case PlaceInformationRefactorOne.PlaceHeader.HowToGoHere:
        print("How to go here")
    case PlaceInformationRefactorOne.PlaceHeader.Hotel:
        print("Hotel")
    case PlaceInformationRefactorOne.PlaceHeader.CurrentWheather:
        print("Wheather")
    case PlaceInformationRefactorOne.PlaceHeader.InterestingPlacesNearby:
        print("Places")
    }
}
