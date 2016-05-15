//
//  ViewController.swift
//  EnumTest
//
//  Created by woroninb on 23/04/16.
//  Copyright © 2016 roche. All rights reserved.
//

import UIKit

enum PlaceInformation: Int { // Used on UISegment Control
    case General
    case More
}

enum GeneralInfo: Int {//Cells for General Info Segment (Tab)
    case Description
    case HowToGoHere
    case Hotel
}

enum MoreInfo: Int {//Cells for More Info Segment (Tab)
    case CurrentWheather
    case InterestingPlacesNearby
}

class PlaceInformationViewController: UIViewController, UITableViewDataSource {
    
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView()
    }

    let selectedTabIndex = 0 //selected segment on UISegmentedControl
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        let section = indexPath.section
        let selectedInformationTab: PlaceInformation = PlaceInformation(rawValue: selectedTabIndex)!
        
        switch selectedInformationTab {
        case .General:
            guard let informationCellType = GeneralInfo(rawValue: section) else { break }
            switch informationCellType {
            case .Description:
                print("Setup Description Cell")
            case .HowToGoHere:
                print("Setup HowToGoHere Cell")
            case .Hotel:
                print("Setup Hotel Cell")
            }
            
        case .More:
            guard let informationCellType = MoreInfo(rawValue: section) else {  break }
            
            switch informationCellType {
            case .CurrentWheather:
                print("Setup Wheather Cell")
            case .InterestingPlacesNearby:
                print("Setup InterestingPlacesNearby Cell")
            }
        }
        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}

