//
//  ViewController.swift
//  SmartHomeI
//
//  Created by JianRongCao on 01/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white;
        self.navigationItem.title = "首页";
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    func showViewName(name: NSString) -> NSString {
        return name;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

