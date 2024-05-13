//
//  ViewController.swift
//  CalenderPlanner
//
//  Created by Batch-1 on 13/05/24.
//

import UIKit
import CalendarKit

class ViewController: UIViewController {
    var dayViewController :DayViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        dayViewController = DayViewController()

        // Hide the timing display at the bottom
        dayViewController?.dayView.timelinePagerView.isHidden = true
        

        addChild(dayViewController!)
        view.addSubview(dayViewController!.view)
        dayViewController!.didMove(toParent: self)
    }



    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        dayViewController?.view.frame = view.bounds
    }


}
