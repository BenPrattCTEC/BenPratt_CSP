//
//  InternetController.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController {
    
    private var detailViewController: InternetDetailViewController?
    private lazy var addresses: [String] = []
    
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
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier! == "showDetail"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let urlString = addresses[indexPath.row]
                let pageText: String
                
                if indexPath.row == 0{
                    //TODO: Replace with actual definitions
                    pageText = "ALLTTHEDEFINITIONS"
                }
                else{
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as! InternetDetailViewController
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    private func setup(){
        //TODO: add actual addresses
        addresses = [
            "https://www.google.com"
        ]
        
        if let splitView = splitViewController{
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as? InternetDetailViewController
        }
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
