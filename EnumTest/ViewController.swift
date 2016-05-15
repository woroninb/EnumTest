//
//  ViewController.swift
//  EnumTest
//
//  Created by woroninb on 23/04/16.
//  Copyright © 2016 roche. All rights reserved.
//

import UIKit

enum PlaceInformation {

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

class PlaceInformationViewController: UIViewController, UITableViewDataSource {

    var tableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView()
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let selectedInformationTab: PlaceInformation = .General
        let selectedTabIndex = 1
        let header = selectedInformationTab.placeValues[selectedTabIndex]
        let cell = UITableViewCell()

        switch header {
        case .Description:
             print("Setup Description Cell")
        case .HowToGoHere:
            print("Setup HowToGoHere Cell")
        case .Hotel:
            print("Setup Hotel Cell")
        case .CurrentWheather:
            print("Setup CurrentWheather Cell")
        case .InterestingPlacesNearby:
            print("Setup InterestingPlacesNearby Cell")
        }
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
