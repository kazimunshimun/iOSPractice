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
    var subscriptions = [Subscription]();
    private var gradient: CAGradientLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moveButtonImage()
        loadData()
        transactionTableView.delegate = self
        transactionTableView.dataSource = self
        transactionTableView.separatorStyle = .none
        subscriptionTableView.delegate = self
        subscriptionTableView.dataSource = self
        subscriptionTableView.separatorStyle = .none
        
        gradient = CAGradientLayer()
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.cgColor, UIColor.black.cgColor, UIColor.clear.cgColor, UIColor.white.cgColor]
        gradient.locations = [0, 0, 0.5, 0.7, 1]
        //gradient.delegate = self
        transactionTableView.layer.mask = gradient
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        updateGradientFrame()
    }
    
    func moveButtonImage() -> Void {
        let buttonWidth = openBankButton.frame.size.width
        openBankButton.imageEdgeInsets = UIEdgeInsetsMake(0, buttonWidth - 40, 0, 0)
    }
    
    func loadData() -> Void {
        let netflixSubscription = Subscription()
        netflixSubscription.mLogo = #imageLiteral(resourceName: "netflix")
        netflixSubscription.mName = "Netflix"
        netflixSubscription.mPrice = "9.99"
        netflixSubscription.mDayRemaining = "In 5 days"
        netflixSubscription.mDateEnding = "May 17"
        netflixSubscription.mDayRemainingProgress = 5
        netflixSubscription.mTotalDayProgress = 30
        
        let adobeSubscription = Subscription(logo: #imageLiteral(resourceName: "adobe"), name: "Adobe Creative Suite", price: "49.99", dayRemaining: "In 7 days", dateEnding: "May 19", dayRemainingProgress: 7, totalDayProgress: 30);
        subscriptions.append(netflixSubscription)
        subscriptions.append(adobeSubscription)
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
        if tableView == subscriptionTableView {
            return subscriptions.count
        }
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
            
            let subscription = subscriptions[indexPath.row]
            cell.logoImageView.image = subscription.mLogo
            cell.nameLabel.text = subscription.mName
            cell.priceLabel.text = subscription.mPrice
            cell.timeLeftLabel.text = subscription.mDayRemaining
            cell.endDateLabel.text = subscription.mDateEnding
            let progress = Float(subscription.mDayRemainingProgress)/Float(subscription.mTotalDayProgress)
            cell.daysLeftProgressView.progress = 1 - progress
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
    
    private func updateGradientFrame() {
        gradient.frame = CGRect(
            x: 0,
            y: transactionTableView.contentOffset.y,
            width: transactionTableView.bounds.width,
            height: transactionTableView.bounds.height
        )
    }
}

