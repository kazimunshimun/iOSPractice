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
        // Do any additional setup after loading the view, typically from a nib.
      //  buttonImageTransform()
    }
    
    func buttonImageTransform() -> Void {
        openBankButton.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        openBankButton.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        openBankButton.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openBankButtonClicked(_ sender: Any) {
    }
    
}

