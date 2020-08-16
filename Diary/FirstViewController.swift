//
//  FirstViewController.swift
//  Diary
//
//  Created by 藤崎嶺 on 2020/08/13.
//  Copyright © 2020 藤崎嶺. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let tableView = UITableView()
//    let tableViewCell = UITableViewCell(style: .subtitle, reuseIdentifier: "customcell")

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = self.view.frame
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
//        tableView.dequeueReusableCell(withIdentifier: "myCell")
        self.view.addSubview(tableView)
        tableView.register(CustomCell.self, forCellReuseIdentifier: "customcell")
        tableView.dataSource = self
        tableView.delegate = self

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

//extension FirstViewController: UITableViewDelegate {
//
//}
//
extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell",for: indexPath) as! CustomCell
//        cell.textLabel?.text = "sample"
//        cell.backgroundColor = .green
//        cell.imageView?.image = .add
//        cell.textLabel?.text = "textLabel"
//        cell.detailTextLabel?.text = "detail"
        cell.textLabel?.text = "sampleLabel"
        cell.detailTextLabel?.text = "detail"
        cell.imageView?.image = .actions
        
        return cell

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "FOOTER"
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "HEADER"
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return ["section1","section2","section3"]
    }

}

extension FirstViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("セルが非選択状態になった時に呼ばれるらしい。非選択にするためのメソッドじゃなさそう。")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
