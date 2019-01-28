//
//  TabBarController.swift
//  CardsScoring
//
//  Created by Raja Reddy on 28/01/19.
//  Copyright © 2019 Raja Reddy. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    lazy var addBarButton: UIBarButtonItem = {
        let btnAdd = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addBtnHandler))
        return btnAdd
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Score"
        
        
        self.navigationItem.rightBarButtonItem = addBarButton
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
    
    @objc fileprivate func addBtnHandler() {
        print("add button clicked")
        
        let matchDetailsSB = UIStoryboard(name: "MatchDetails", bundle: nil)
        let destVC = matchDetailsSB.instantiateInitialViewController()
        destVC?.modalPresentationStyle = .currentContext
        self.navigationController?.present(destVC!, animated: true, completion: nil)
    }
}
