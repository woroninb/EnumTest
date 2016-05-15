//
//  ViewController.swift
//  EnumTest
//
//  Created by woroninb on 23/04/16.
//  Copyright © 2016 roche. All rights reserved.
//

import UIKit


enum PlaceInformationCellModel {
    // tableView section depends on selectedTable and tableview section
    case Header(selectedTab: PlaceInformation, section: Int)

    enum PlaceInformation: Int { // Used on UISegment Control
        case General
        case More
    }

    enum PlaceHeader {
        case Description, HowToGoHere, Hotel, CurrentWheather, InterestingPlacesNearby
        static let allGeneralHeaders = [Description, HowToGoHere, Hotel]
        static let allMoreHeraders = [CurrentWheather, InterestingPlacesNearby]
    }

    var value: PlaceHeader {
        switch self {
        case .Header(let tab, let sectionIndex):
            switch tab {
            case .General:
                return PlaceHeader.allGeneralHeaders[sectionIndex]
            case .More:
                return PlaceHeader.allMoreHeraders[sectionIndex]
            }
        }
    }
}

class PlaceInformationViewController: UIViewController, UITableViewDataSource {

    var tableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView()
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let selectedTabIndex = 1 //selected segment on UISegmentedControl
        let tableViewSection: PlaceInformationCellModel = PlaceInformationCellModel.Header(selectedTab: PlaceInformationCellModel.PlaceInformation(rawValue: selectedTabIndex)!, section: indexPath.section)
        let header = tableViewSection.value
        let cell = UITableViewCell()

            switch header {
            case PlaceInformationCellModel.PlaceHeader.Description:
                print("Setup Description Cell")
            case PlaceInformationCellModel.PlaceHeader.HowToGoHere:
                print("Setup HowToGoHere Cell")
            case PlaceInformationCellModel.PlaceHeader.Hotel:
                print("Setup Hotel Cell")
            case PlaceInformationCellModel.PlaceHeader.CurrentWheather:
                print("Setup CurrentWheather Cell")
            case PlaceInformationCellModel.PlaceHeader.InterestingPlacesNearby:
                print("Setup InterestingPlacesNearby Cell")
            }
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
