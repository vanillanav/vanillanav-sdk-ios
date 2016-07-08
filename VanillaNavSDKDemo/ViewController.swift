//
//  ViewController.swift
//  VanillaNavSDKDemo
//
//  Created by Danilov Dorin on 08/07/16.
//  Copyright © 2016 Danilov Dorin. All rights reserved.
//

import UIKit
import VanillaNavSDK

class ViewController: UIViewController {

    @IBAction func navigateToVanillaButtPress(sender: AnyObject) {
        VanillaNav().navigateToVanillaNav(8037, destinationId: 19144)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

