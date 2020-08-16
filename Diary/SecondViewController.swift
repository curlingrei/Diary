//
//  SecondViewController.swift
//  Diary
//
//  Created by 藤崎嶺 on 2020/08/13.
//  Copyright © 2020 藤崎嶺. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let label2 = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        label2.text = "SECOND"
        label2.backgroundColor = .blue
        label2.frame = self.view.bounds
        self.view.addSubview(label2)
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
