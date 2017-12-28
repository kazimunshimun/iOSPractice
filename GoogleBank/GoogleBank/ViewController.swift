//
//  ViewController.swift
//  GoogleBank
//
//  Created by Anik on 12/27/17.
//  Copyright © 2017 mTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var openBankButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        moveButtonImage()
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
    
}

