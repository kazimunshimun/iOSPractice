//
//  ViewController.swift
//  GoogleBank
//
//  Created by Anik on 12/27/17.
//  Copyright © 2017 mTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var openBankButton: UIButton!
    @IBOutlet weak var transactionTableView: UITableView!
    @IBOutlet weak var subscriptionTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moveButtonImage()
        transactionTableView.delegate = self
        transactionTableView.dataSource = self
        subscriptionTableView.delegate = self
        subscriptionTableView.dataSource = self
    }
    
    func moveButtonImage() -> Void {
        let buttonWidth = openBankButton.frame.size.width
        openBankButton.imageEdgeInsets = UIEdgeInsetsMake(0, buttonWidth - 40, 0, 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openBankButtonClicked(_ sender: Any) {
        //NSLog("open bank button clicked")
        print("open bank button clicked")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == transactionTableView {
            let cellIdentifier = "transactionCell"
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TransactionTableViewCell  else {
                fatalError("The dequeued cell is not an instance of MealTableViewCell.")
            }
            
            return cell;
        } else {
            let cellIdentifier = "subscriptionCell"
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SubscriptionTableViewCell  else {
                fatalError("The dequeued cell is not an instance of MealTableViewCell.")
            }
            
            return cell;
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == transactionTableView {
            return 80.0;
        } else {
            return 96.0;
        }
    }
}

