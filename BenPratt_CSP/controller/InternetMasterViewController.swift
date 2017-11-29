//
//  InternetController.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController {
    
    private var detailViewController: InternetDetailViewController
    
    private (set) lazy var internetTopics: [String] = {
        return ["Definitions","CSP","Canyons","Twitter","Swift Guide"]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
        // Do any additional setup after loading the view.
    }
    
    override public func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> Int{
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
