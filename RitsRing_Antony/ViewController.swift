//
//  ViewController.swift
//  RitsRing_Antony
//
//  Created by 神原良継 on 2019/07/02.
//  Copyright © 2019 YoshitsuguKambara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var tableViewEntry:UITableView?
    let entryItems = ["mail Address", "Password"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableViewEntry = {
            let tableViewEntry = UITableView(frame: self.view.bounds, style: .plain)
            tableViewEntry.autoresizingMask = [
                .flexibleWidth,
                .flexibleHeight
            ]
            tableViewEntry.delegate = self
            tableViewEntry.dataSource = self
            self.view.addSubview(tableViewEntry)
            
            return tableViewEntry
        }()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
            ?? UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = self.entryItems[indexPath.row]
        
        return cell
        /*
        let cell: InputTextTableCell = tableView.dequeueReusableCellWithIdentifier("InputTextCell", forIndexPath: indexPath) as! InputTextTableCell
        return cell
        */
    }
    
    //セルが選択されたとき
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected! \(self.entryItems[indexPath.row])")
        
        
    }

}


