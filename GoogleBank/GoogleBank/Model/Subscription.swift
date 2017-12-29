//
//  Subscription.swift
//  GoogleBank
//
//  Created by Anik on 29/12/17.
//  Copyright © 2017 mTeam. All rights reserved.
//

import UIKit

class Subscription: NSObject {
    var mLogo : UIImage!
    var mName : String!
    var mPrice : String!
    var mDayRemaining : String!
    var mDateEnding : String!
    var mDayRemainingProgress : Int!
    var mTotalDayProgress : Int!
    
    override init() {
        
    }
    
    init(logo: UIImage, name: String, price: String, dayRemaining: String, dateEnding: String, dayRemainingProgress: Int, totalDayProgress: Int) {
        mLogo = logo;
        mName = name;
        mPrice = price;
        mDayRemaining = dayRemaining;
        mDateEnding = dateEnding
        mDateEnding = dateEnding
        mDayRemainingProgress = dayRemainingProgress
        mTotalDayProgress = totalDayProgress
    }
}
