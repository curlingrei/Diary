//
//  ViewController.swift
//  Diary
//
//  Created by 藤崎嶺 on 2020/08/10.
//  Copyright © 2020 藤崎嶺. All rights reserved.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    let monster = UIImage(named: "monster")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let firstViewController = FirstViewController()
        let seconViewController = SecondViewController()
        let viewControllers: [UIViewController
            ] = [firstViewController,seconViewController]
        
        seconViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        firstViewController.tabBarItem = UITabBarItem(title: "sample", image: .actions, tag: 0)
        self.setViewControllers(viewControllers, animated: true)
        
        // Do any additional setup after loading the view.
        self.title = "タブバー"
        self.view.backgroundColor = .white
        tabBar.backgroundColor = .white
        self.view.addSubview(tabBar)
        print("display")
        self.navigationItem.rightBarButtonItem = editButtonItem
        
    }
}



