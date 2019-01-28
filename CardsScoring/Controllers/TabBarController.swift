//
//  TabBarController.swift
//  CardsScoring
//
//  Created by Raja Reddy on 28/01/19.
//  Copyright © 2019 Raja Reddy. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Score"
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch selectedIndex {
        case 0:
            self.navigationItem.title = "Score"
            break
        default:
            break
        }
    }
}
